<template>
  <span>Simple todo list created with Vue</span>
  <span>Add an item using the input field, and remove an item by clicking on it below</span>
  <form @submit.prevent="addItem">
    <input type="text" v-model="input" autofocus>
    <button>Add Item</button>
  </form>
  <ul>
    <li v-for="item in items" :key="item" @click="removeItem(item)"> {{ item }} </li>
  </ul>
</template>

<script>
  export default {
    data() {
      return {
        items: [],
        input: ''
      }
    },
    methods: {
        addItem() {
          this.items.push(this.input)
          this.input = ''
        },
        removeItem(item) {
          var itemIndex = this.items.indexOf(item);
          this.items.splice(itemIndex, 1);
        }
    }
  }
</script>

<style>
  body {
    background-color: rgb(25, 25, 25);
    color: white;
  }

  #app {
    display: flex;
    align-items: center;
    flex-direction: column;
  }

  form {
    width: 25%;
    display: flex;
    justify-content: space-evenly;
    margin: 40px 0;
  }

  input {
    background-color: rgba(0,0,0,0);
    color: white;
    border: 3px solid #44c767;
    border-radius: 3px;
    text-align: center;
    outline: none;
    font-size: 20px;
  }

  button {
    background-color:#44c767;
    border-radius:32px;
    border:1px solid #18ab29;
    display:inline-block;
    cursor:pointer;
    color:#ffffff;
    font-family:'Courier New', Courier, monospace;
    font-weight: bold;
    font-size:20px;
    padding:16px 32px;
    text-decoration:none;
    text-shadow:0px 1px 0px #2f6627;
  }

  ul {
    color: white;
    font-family:'Courier New', Courier, monospace;
    font-size: 22px;
    list-style: none;
  }

  li::before {
    content: "\25a2";
    color: #44c767;
    margin-right: .5em;
  }
</style>
