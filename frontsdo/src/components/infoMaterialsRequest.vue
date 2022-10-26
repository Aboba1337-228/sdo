<template>
    <h1 v-if="isSuccess == false" style="text-align: center; color: red; margin: 15px 0px 50px 0px;">Сначала авторизируйтесь</h1>
    <div class="main__materials" v-if="Access()">
        <div v-if="isSuccess == true">
            <div v-if="isList == 0">
                <div v-if="isMaterialActive == 0">
                    <div class="breadcrumb"><router-link class="nav__breadcrumb" to="/">Главная</router-link> / Материалы</div>
                    <hr class="breadcrumb__line">
                </div>
                <div v-if="isMaterialActive == 0" class="test__inner">
                    <div class="test__menu">
                    <h1>ВЫБОР МАТЕРИАЛА</h1>
                        <div  class="link__inner">
                            <div v-for="itemFullMaterials in isFullMaterials" :key="itemFullMaterials">
                                <div class="test__link" @click="isMaterialActive = itemFullMaterials.test_id" >
                                    {{ itemFullMaterials.name_materials }}
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- <img src="../assets/test/main.png" alt=""> -->
                </div>

                <div class="materials__full" v-for="itemsFullMaterials in isFullMaterials" :key="itemsFullMaterials">
                    <div v-if="isMaterialActive == itemsFullMaterials.test_id">
                        <div class="breadcrumb">
                            <router-link class="nav__breadcrumb" to="/">Главная</router-link>
                             / <router-link class="nav__breadcrumb" to="/materials" @click="isMaterialActive = 0">Материалы</router-link>
                             / №{{itemsFullMaterials.test_id}}</div>
                        <hr class="breadcrumb__line">
                    </div>
                    <div class="materials__inner">
                        <div v-if="isMaterialActive == itemsFullMaterials.test_id">
                            <h2 @click="isTraining = !isTraining">Программа обучения</h2>
                            <a v-if="isTraining == true" href="/pdf/Resume.pdf">
                                <img src="../assets/materials/obl_tipovaya_uik.jpg" class="materials__pdf" width="150" height="200" alt="">
                            </a>

                            <h2 @click="isMethodical = !isMethodical">Учебно-методические материалы</h2>
                            <div v-if="isMethodical == true" class="materials">{{ itemsFullMaterials.materials }}</div>

                            <h2><a href="/pdf/Инструкция.pdf">Инструкция</a></h2>
                        </div>
                        <button class="test__ready" v-if="isMaterialActive == itemsFullMaterials.test_id" @click="isList = itemsFullMaterials.test_id, isReadyTest(), isReadyAnswer()">Начать тест</button>
                    </div>
                </div>
            </div>

            <div v-for="isFullTest in isFullMaterials" :key="isFullTest" >
                <div class="test__sep" v-if="isList == isFullTest.test_id">
                    <h1 class="test__name">Тест</h1>
                    <div v-for="itemQuest in isTestQuest.length" :key="itemQuest">
                        <h3 class="quest__test">Вопрос {{ itemQuest }}:  <span>{{ isTestQuest[itemQuest - 1] }}</span></h3>
                        <div class="test__quest">
                            <select v-model="isVerifySelectAnswer[itemQuest - 1]">
                                <option :value="itemAnswer" v-for="itemAnswer in isAnswer[itemQuest - 1]" :key="itemAnswer">
                                    {{ itemAnswer }}
                                </option>
                            </select>
                        </div>
                    </div>
                    <button @click="isFinishTest" class="test__finish">Завершить тест</button>
                </div>
            </div>

            <Success v-if="isList == 'SuccessTest'" />
            <Error v-if="isList == 'FalseTest'" />
        </div>
    </div>
</template>

<script>
import axios from 'axios'
import settings from '../settings'
import Success from './canTest/success.vue'
import Error from './canTest/error.vue'

export default {
    components: {
        Success,
        Error
    },
    data() {
        return {
            isMaterialsFalse: "",
            isTestFalse: "",
            isFullMaterials: [],
            isTestQuest: [],
            isAnswer: [],
            isMaterialActive: 0,
            isTestActive: 0,
            isSuccess: false,
            isList: "",
            isVerifyAnswer: [],
            isVerifySelectAnswer: [],

            //Materials
            isTraining: false,
            isMethodical: false,
        }
    },

    mounted: async function () {
        try {
            const resultMaterials = await axios({
                method: 'post',
                url: `http://${settings.host}:${settings.port}/user/materials`,
            })
            this.isFullMaterials = resultMaterials.data.message
        } catch (error) {
            this.isMaterialsFalse = "Материалы не загруженны!"
        }   
    },

    methods: {
        async Access() {
            let token = localStorage.getItem('token')
            if(token == null) {} else {
                try {
                    axios({
                        method: 'post',
                        url: `http://${settings.host}:${settings.port}/user/loginByToken`,
                        headers: {'Authorization': token}
                    })
                    this.isSuccess = true
                } catch (error) {
                    if(error.response.data.message == "jwt expired") {
                        localStorage.removeItem('token')
                    }
                    this.isSuccess = false
                }
            }
        },

        isReadyTest() {
            axios.post(`http://${settings.host}:${settings.port}/user/testQuest`, {
                test_id: this.isList
            }).then(response => {
                this.isTestQuest = JSON.parse(response.data.message.quest)
            }).catch(error => {
                this.isTestFalse = "Теста нет!"
            })
        },

        isReadyAnswer() {
            axios.post(`http://${settings.host}:${settings.port}/user/testAnswer`, {
                test_id: this.isList
            }).then(response => {
                let resultVerifyAnswer = JSON.parse(response.data.message[0].verify_answer)
                let result = JSON.parse(response.data.message[0].answer)
                this.isAnswer = result
                this.isVerifyAnswer = resultVerifyAnswer
            }).catch(error => {
                this.isTestFalse = "Вопросов нет!"
            })
        },

        isFinishTest() {
            let next = 0
            for (let indexAnswer = 0; indexAnswer < this.isVerifyAnswer.length; indexAnswer++) {
                if(this.isVerifySelectAnswer[indexAnswer] == this.isVerifyAnswer[0]) {
                    next += 1
                } else {
                    this.isList = "FalseTest"
                }
            }

            let percent = this.isVerifyAnswer.length * 0.5
            if (percent <= next) {
                this.isList = "SuccessTest"
            }
        }
    }
}
</script>

<style scoped>
.main__materials {
    margin: 20px 0px;
}

/* breadcrumb */
.breadcrumb {
    margin: 5px 0px;
}

.nav__breadcrumb {
    color: #000;
    text-decoration: none;
}

.breadcrumb__line {
    margin-bottom: 50px;   
}
/* end breadcrumb */

.test__inner {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 0px 100px;
}

.test__menu {
  margin: 75px 0px 0px 0px;
}

.test__menu > h1 {
  font-weight: 400;
  font-size: 36px;
  text-align: left;
}

.link__inner {
  display: grid;
  align-items: flex-start;
  flex-wrap: wrap;
  margin: 55px 0px;
}

.link__inner > div > div {
    width: 1000px;
    padding-left: 20px;
}

.test__link {
  border: 1px solid #000;
  display: flex;
  align-items: center;
  /* justify-content: center; */
  width: 1000px;
  height: 79px;
  text-decoration: none;
  color: #000;
  margin: 10px;
  /* border-radius: 6px; */
  font-size: 16px;
  cursor: pointer;
}

.materials {
    margin: 30px 0px 0px 0px;
    overflow-y: scroll;
    width: 1000px;
    height: 500px;
    background: #eeeeee;
    padding: 10px;
}

.materials__inner {
    display: grid;
    justify-content: center;
}

.materials__pdf {
    margin: 25px 0px;
}

.materials__inner > div > h2 {
    border: 1px solid #000;
    width: 1000px;
    height: 50px;
    display: flex;
    align-items: center;
    padding-left: 10px;
    cursor: pointer;
    margin: 13px 0px;
}

.materials__inner > div > h2 > a {
    text-decoration: none;
    color: #000;
}

.test__ready {
    margin: 70px 0px;
    border: 1px solid #000;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 115px;
    height: 45px;
    text-decoration: none;
    color: #000;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
}

.test__finish {
    margin: 70px 0px;
    border: 1px solid #000;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 175px;
    height: 45px;
    text-decoration: none;
    color: #000;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
}

.test__sep {
    max-width: 900px;
    margin: 0 auto;
}

.test__name {
    margin: 40px 0px;
    text-align: center;
}

.quest__test > span {
    font-weight: 300;
}

.test__quest {
    position: relative;
    display: inline-block;
    margin: 22px 0px;
}

.test__quest:after {
    content: "▼";
    padding: 0 8px;
    font-size: 12px;
    position: absolute;
    right: 8px;
    top: 20px;
    z-index: 1;
    text-align: center;
    width: 10%;
    height: 100%;
    pointer-events: none;
    box-sizing: border-box;
}

.test__quest > select {
    width: 365px;
    padding-right: 25px;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    outline: none;
    height: 53px;
    padding: 0px 10px;
    border: 0px;
    /* border-radius: 10px; */
    box-shadow: 2px 2px 0px rgba(20, 29, 61, 0.15), -2px -2px 0px rgba(20, 29, 61, 0.15);
    font-size: 14px;
}

</style>