const db = require('../database/db.js')

const insert_task = db.prepare(/*sql*/ `
  INSERT INTO tasks (content, complete)
  VALUES ($content, $complete)
  RETURNING id, content, created_at
`)

function createTask(task) {
	return insert_task.get(task)
}
const select_tasks = db.prepare(/*sql*/ `
  SELECT id, content, TIME(created_at) AS created_at, complete FROM tasks
`)

function listTasks() {
	return select_tasks.all()
}

const delete_task = db.prepare(/*sql*/ `
  DELETE FROM tasks WHERE id = ?
`)

function removeTask(id) {
	delete_task.run(id)
}

function editTask(task) {
	return update_content.get(task)
}
const update_content = db.prepare(/*sql*/ `
  UPDATE tasks
  SET content = $content
  WHERE id = $id
  RETURNING id, content, created_at, complete
`)

const update_complete = db.prepare(/*sql*/ `
  UPDATE tasks
  SET complete = NOT complete
  WHERE id = ?
  RETURNING id, content, created_at, complete
`)

function toggleTask(id) {
	return update_complete.get(id)
}

module.exports = { createTask, listTasks, removeTask, editTask, toggleTask }
