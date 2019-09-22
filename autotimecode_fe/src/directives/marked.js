import marked from 'marked'

function bind(el, binding) {
  el.innerHTML = marked(binding.value)
}

function update(el, binding) {
  el.innerHTML = marked(binding.value)
}

export default {
  bind,
  update
}