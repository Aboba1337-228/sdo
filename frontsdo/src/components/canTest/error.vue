<template>
    <div>
        <h2>Тест не пройден</h2>
        <button>Назад</button>
    </div>
</template>

<style scoped>
h2 {
    text-align: center;
    color: red;
}

button {
    width: 149px;
    height: 40px;
    cursor: pointer;
}
</style>

<script>
export default {
    mounted() {
        window.scrollTo({ top: 0 });
    }
}
</script>