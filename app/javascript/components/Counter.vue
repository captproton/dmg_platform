<template lang="">
    <div>
        <button id="counter-button" @click="increment" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
            increment
        </button>
        <p class="text" >
            Count is: {{ count }}
        </p>
    </div>
</template>
<script>
export default {
    data() {
        return {
            count: 0
        }
    },
    methods: {
        increment() {
            this.count++
        }
    }
}
</script>
<style lang="css">
    #counter-button {
        background-color: #4caf50;
        border-color: #3490dc;
        color: #fff;
        display: inline-block;
        font-weight: 400;
        line-height: 1.25;
        padding: 0.5rem 1rem;
        text-align: center;
        vertical-align: middle;
        white-space: nowrap;

    }
    #counter-button:hover {
        background-color: #38c172;
        border-color: #38c172;
        cursor: pointer;

    }   
</style>