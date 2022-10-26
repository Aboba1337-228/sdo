<template>
    <div class="container">
        <h2>Тест пройден</h2>
        <div class="verify">
            <img src="./123.jpg" width="450" height="300" alt="">
            <a href="http://localhost:8080/img/123.cb90ebfd.jpg" download="123.cb90ebfd.jpg">
                <button>Скачать</button>
            </a>
        </div>
        <form>
            <input type="text" placeholder="ФИО">
            <input type="text" placeholder="E-mail">
            <button>Отправить</button>
        </form>
    </div>
</template>

<style scoped>
h2 {
    text-align: center;
    color: lightgreen;
}

.verify { 
    display: grid;
    justify-content: center;
    margin: 25px 0px;
}

.verify > a > button {
    width: 80px;
    height: 30px;
    margin: 10px 0px;
}

.verify > a {
    text-decoration: none;
    color: #000;
}

form {
    display: flex;
    flex-direction: column;
    max-width: 350px;
    margin: 0 auto;
}

form > input {
    margin: 5px 0px;
    height: 30px;
    font-size: 20px;
    padding-left: 5px;
}

form > button {
    margin: 5px 0px;
    height: 30px;
    font-size: 20px;
}
</style>

<script>
export default {
    mounted() {
        window.scrollTo({ top: 0 });
    }
}
</script>