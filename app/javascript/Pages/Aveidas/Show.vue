<template>
  <div>
    <h1>{{ aveida.title }}</h1>
    <p>{{ aveida.body }}</p>
    <inertia-link :href="`/aveidas/${aveida.id}/edit`"> Edit </inertia-link>
    <inertia-link :href="`/aveidas/${aveida.id}`" method="delete">Delete</inertia-link>
  </div>
</template>

<script>
export default {
  name: "AveidasIndex",
  props: {
    aveida: Object,
  },
};
</script>

<style>
</style>
