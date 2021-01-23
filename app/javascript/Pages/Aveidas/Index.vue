<template>
  <div>
    <h1>Aveidas</h1>
    <ul>
      <li v-for="aveida in aveidas" :key="aveida.id">
        <h4>{{ aveida.title }}</h4>
        <p>{{ aveida.body }}</p>
        <inertia-link :href="`/aveidas/${aveida.id}`">
          Show
        </inertia-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'AveidasIndex',
  props: {
    aveidas: Array
  },
}
</script>

<style>

</style>
