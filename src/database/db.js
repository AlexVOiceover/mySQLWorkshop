const { readFileSync } = require('node:fs')
const { join } = require('node:path')
const Database = require('better-sqlite3')

const db = new Database(process.env.DB_FILE)

const schemaPath = join('src', 'database', 'mySchema.sql')
const schema = readFileSync(schemaPath, 'utf-8')
db.exec(schema)

module.exports = db

// const { createTask, listTasks, removeTask } = require('../model/tasks.js')

// const result = createTask({ content: 'stuff', complete: 1 })

// console.log(result)

// console.log(listTasks())

// removeTask(1)

// console.log(listTasks())
