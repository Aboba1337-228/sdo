<template>
    <div class="admin">
        <h1>Администрирование</h1>
        <div class="container">
            <div class="admin__inner">
                <div class="admin__sidebar">
                    <h2>Редактирование</h2>
                    <button @click="isListAdmin = 0">Новости</button>
                    <button @click="isListAdmin = 1">Тесты</button>
                    <button @click="isListAdmin = 2">Регионы / Районы</button>
                    <button @click="isListAdmin = 3">Результаты</button>
                </div>
                <div class="admin__main">
                    <div class="main__news" v-if="isListAdmin == 0">
                        <h2>Новости</h2>
                        <hr>
                        <div class="news__btn">
                            <button @click="isNews = 0">Форма</button>
                            <button @click="isNews = 1">Таблица</button>
                        </div>
                        <hr>
                        <div class="main__news" v-if="isNews == 0">
                            <input type="file">
                            <input type="text" class="news__name" placeholder="Название новости">
                            <textarea placeholder="Описание новости" cols="90" rows="15"></textarea>
                            <button>Загрузить</button>
                        </div>

                        <table v-if="isNews == 1">
                            <thead>
                                <tr>
                                    <th>Номер</th>
                                    <th>Картинка</th>
                                    <th>Название</th>
                                    <th>Текст</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>logo.png</td>
                                    <td>Название</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                         Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                                         nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                                         reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                                         pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                                         qui officia deserunt mollit anim id est laborum.</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>logo.png</td>
                                    <td>Название</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                         Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                                         nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                                         reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                                         pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                                         qui officia deserunt mollit anim id est laborum.</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>logo.png</td>
                                    <td>Название</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                         Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                                         nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                                         reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                                         pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                                         qui officia deserunt mollit anim id est laborum.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div v-if="isListAdmin == 1">1</div>
                    <div class="main__region" v-if="isListAdmin == 2">
                        <h2>Регион</h2>
                        <hr>
                        <div class="region__btn">
                            <button @click="isRegion = 0">Форма</button>
                            <button @click="isRegion = 1">Таблица</button>
                        </div>
                        <hr>
                        <div class="main__region" v-if="isRegion == 0">
                            <input type="text" class="regoin__name" placeholder="Название региона">
                            <input type="text" class="regoin__name" placeholder="Название района">
                            <button>Загрузить</button>
                        </div>

                        <table v-if="isRegion == 1">
                            <thead>
                                <tr>
                                    <th>Номер</th>
                                    <th>Муниципалитет</th>
                                    <th>Район</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Оренбург</td>
                                    <td>23 мкр.</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Оренбург</td>
                                    <td>23 мкр.</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Оренбург</td>
                                    <td>23 мкр.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="main__result" v-if="isListAdmin == 3">
                        <h2>Результаты теста</h2>
                        <hr>
                        <table>
                            <thead>
                                <tr>
                                    <th>Номер</th>
                                    <th>ФИО участника</th>
                                    <th>Результат</th>
                                    <th>Баллы</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Сергей Сергеев Сергеевич</td>
                                    <td>Сдал</td>
                                    <td>79</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Сергей Сергеев Сергеевич</td>
                                    <td>Сдал</td>
                                    <td>79</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Сергей Сергеев Сергеевич</td>
                                    <td>Сдал</td>
                                    <td>79</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    data() {
        return {
            isListAdmin: 0,
            isRegion: 0,
            isNews: 0
        }
    },
}
</script>

<style scoped>
h1 {
    text-align: center;
    margin: 20px 0px;
}

th, td {
    border: 1px solid #000;
}

td {
    padding: 0px 15px;
}

.admin__inner {
    display: flex;
}

.admin__sidebar {
    border: 1px solid #000;
    flex-direction: column;
    display: flex;
    width: 200px;
    height: 484px;
    padding: 10px;
}

.admin__sidebar > h2 {
    text-align: center;
    margin-bottom: 10px;
}

.admin__sidebar > button {
    padding: 5px 0px;
    margin: 5px 0px;
    cursor: pointer;
}

.admin__main {
    margin: 0px 0px 0px 50px;
}

/* news */
.main__news {
    display: flex;
    flex-direction: column;
    width: 1000px;
}

.main__news > hr {
    margin: 20px 0px;
}

.news__btn > button {
    padding: 5px 20px;
    margin-right: 10px;
    cursor: pointer;
}

.main__news > input, textarea {
    margin: 10px 0px;
    font-size: 20px;
}

.main__news > button {
    padding: 15px 0px;
    width: 200px;
    cursor: pointer;
}

.news__name, textarea {
    padding: 5px 0px;
    padding-left: 5px;
}
/* end news */

/* regoin */
.main__region {
    display: flex;
    flex-direction: column;
    width: 700px;
}

.main__region > hr {
    margin: 20px 0px;
}

.region__btn > button {
    padding: 5px 20px;
    margin-right: 10px;
    cursor: pointer;
}

.main__region > input, textarea {
    margin: 10px 0px;
    font-size: 20px;
}

.main__region > button {
    padding: 10px 0px;
    width: 200px;
    cursor: pointer;
}

.regoin__name, textarea {
    padding: 5px 0px;
    padding-left: 5px;
}
/* end region */

/* result */
.main__result {
    display: flex;
    flex-direction: column;
    width: 700px;
}

.main__result > hr {
    margin: 20px 0px;
}
/* end result */
</style>