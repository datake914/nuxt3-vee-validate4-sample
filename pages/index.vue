<template>
  <div>
    <input v-model="value" type="text" />
    <span>{{ errorMessage }}</span>
  </div>
</template>
<script>
import { useField } from 'vee-validate';
export default {
  setup() {
    function isRequired(value) {
      if (value && value.trim()) {
        return true;
      }
      return 'This is required';
    }
    const { errorMessage, value } = useField('fieldName', isRequired);
    return {
      errorMessage,
      value,
    };
  },
};
</script>