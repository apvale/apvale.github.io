<template>
  <section>
    <!--about me start-->
    <vue-about />
    <!--about me end-->
    <!--experience start-->
    <vue-experiences />
    <!--experience end-->
    <!--technical start-->
    <vue-skills />
    <!--technical end-->
    <!--education start-->
    <vue-educations />
    <!--education end-->
    <!--contact start-->
    <vue-contact />
    <!--contact end-->
  </section>
</template>

<script>
import About from './about'
import Contact from './contact'
import Educations from './educations'
import Experiences from './experiences'
import Skills from './skills'

export default {
  components: {
    'vue-about': About,
    'vue-contact': Contact,
    'vue-educations': Educations,
    'vue-experiences': Experiences,
    'vue-skills': Skills,
  }
}
</script>
