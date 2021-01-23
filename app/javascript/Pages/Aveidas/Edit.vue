<template>
  <div>
    <inertia-link :href="`/aveidas/${aveida.id}`">Back</inertia-link>
    <h1>Edit {{ aveida.title }}</h1>
    <form @submit.prevent="form.put(`/aveidas/${aveida.id}`)">
      <p>
        <label for="title">Title</label>
        <input v-model="form.title" id="title" />
      </p>
      <p>
        <label for="body">Body</label>
        <textarea v-model="form.body" id="body" cols="30" rows="10"></textarea>
      </p>
      <input type="hidden" :value="$page.props.csrf_token" />
      <input type="submit" value="Update" />
    </form>
  </div>
</template>

<script>
import { useForm } from "@inertiajs/inertia-vue3";

export default {
  name: "AveidasIndex",
  props: {
    aveida: Object,
  },
  setup(props) {
    const form = useForm({
      title: props.aveida.title,
      body: props.aveida.body,
    });
    return {
      form,
    };
  },
};
</script>

<style>
</style>
