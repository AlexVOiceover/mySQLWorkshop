const express = require('express')
// const products = require("./routes/products.js");
// const product = require("./routes/product.js");
// const search = require("./routes/search.js");
// const add = require("./routes/add.js");

const server = express()

// server.get("/", products.get);
// server.get("/product/:id", product.get);
// server.get("/search", search.get);
// server.get("/new", add.get);
// server.post("/new", express.urlencoded({ extended: false }), add.post);

function Task(task) {
	return /*html*/ `
      <li>
        <form method="POST" action="/update">
          <input type="hidden" name="id" value="${task.id}">
          <button name="action" value="toggle" aria-label="Toggle complete">
            ${task.complete ? '☑︎' : '☐'}
          </button>
          <span style="${task.complete ? 'text-decoration: line-through' : ''}">
            ${task.content}
          </span>
          <button name="action" value="remove">&times;</button>
        </form>
      </li>
    `
}

server.get('/', (req, res) => {
	const tasks = model.listTasks()
	const list = tasks.map(Task)
	const body = /*html*/ `
      <!doctype html>
      <form method="POST">
        <input id="content" name="content" aria-label="New task" required>
        <button>Add task +</button>
      </form>
      <ul>${list.join('')}</ul>
    `
	res.send(body)
})

const model = require('./model/tasks.js')

server.post('/', express.urlencoded({ extended: false }), (req, res) => {
	const task = {
		content: req.body.content,
		complete: 0,
	}
	model.createTask(task)
	res.redirect('/')
})

server.post('/update', express.urlencoded({ extended: false }), (req, res) => {
	const { action, id } = req.body
	if (action === 'remove') model.removeTask(id)
	if (action === 'toggle') model.toggleTask(id)
	res.redirect('/')
})

module.exports = server
