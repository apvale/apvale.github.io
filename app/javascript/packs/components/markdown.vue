<template>
  <div v-html="markdown"><slot></slot></div>
</template>

<script>
import marked from 'marked'

export default {
  computed: {
    markdown() {
      if (this.$slots.default) {
        const slots = this.$slots.default
        this.transform.bind(this)
        return this.transform(slots).join('')
      }
      return ''
    }
  },
  methods: {
    convert(slot) {
      return marked(slot.text, { sanitize: true })
    },
    transform(slots) {
      return slots.map(slot => {
        if (slot.text === undefined) {
          return this.transform(slot.children)
        }
        return this.convert(slot)
      })
    }
  }
}
</script>
