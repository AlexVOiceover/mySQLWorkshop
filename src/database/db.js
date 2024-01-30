const { readFileSync } = require('node:fs')
const { join } = require('node:path')
const Database = require('better-sqlite3')
// const { createTask } = require('../model/tasks.js')

const db = new Database(process.env.DB_FILE)

// const select_date = db.prepare("SELECT DATE()");
// const result = select_date.get();
// console.log(result);

const schemaPath = join('src', 'database', 'mySchema.sql')
const schema = readFileSync(schemaPath, 'utf-8')
db.exec(schema)

module.exports = db

// const select_table = db.prepare("SELECT name FROM sqlite_schema");
// const result = select_table.all();
// console.log(result);

// const select_date = db.prepare('SELECT DATE()')
// const result = select_date.get()
// console.log(result)
const { createTask } = require('../model/tasks.js')

createTask('Eat a banana')
const tasks = db.prepare('SELECT * FROM tasks').all()
console.log(tasks)
