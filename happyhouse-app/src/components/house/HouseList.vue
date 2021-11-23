<template>
  <v-container v-if="houses && houses.length != 0" class="bv-example-row mt-3">
    <house-list-row
      v-for="(house, index) in houses"
      :key="index"
      :house="house"
    />
  </v-container>
  <v-container v-else class="bv-example-row mt-3">
    <v-row>
      <v-col><v-alert show>주택 목록이 없습니다.</v-alert></v-col>
    </v-row>
  </v-container>
</template>

<script>
import HouseListRow from "@/components/house/HouseListRow.vue";
import { mapMutations, mapState } from "vuex";

const houseStore = "houseStore";

export default {
  name: "HouseList",
  components: {
    HouseListRow,
  },
  data() {
    return {};
  },
  computed: {
    ...mapState(houseStore, ["houses"]),
  },
  methods: {
    ...mapMutations(houseStore, ["CLEAR_HOUSE_LIST"]),
  },
  destroyed() {
    this.CLEAR_HOUSE_LIST();
  },
};
</script>

<style></style>
