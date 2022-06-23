
<!-- Vendor JS Files -->
<script src="${pageContext.request.contextPath}/assets/vendor/purecounter/purecounter.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>


<script>
  

Vue.component("step-navigation-step", {
  template: "#step-navigation-step-template",

  props: ["step", "currentstep"],

  computed: {
    indicatorclass() {
      return {
        active: this.step.id == this.currentstep,
        complete: this.currentstep > this.step.id };

    } } });



Vue.component("step-navigation", {
  template: "#step-navigation-template",

  props: ["steps", "currentstep"] });


Vue.component("step", {
  template: "#step-template",

  props: ["step", "stepcount", "currentstep"],

  computed: {
    active() {
      return this.step.id == this.currentstep;
    },

    firststep() {
      return this.currentstep == 1;
    },

    laststep() {
      return this.currentstep == this.stepcount;
    },

    stepWrapperClass() {
      return {
        active: this.active };

    } },


  methods: {
    nextStep() {
      this.$emit("step-change", this.currentstep + 1);
    },

    lastStep() {
      this.$emit("step-change", this.currentstep - 1);
    } } });



new Vue({
  el: "#app",

  data: {
    currentstep: 1,

    steps: [
    {
      id: 1,
      title: "Type",
      icon_class: "fa fa-map-marker" },

    {
      id: 2,
      title: "Médecins, Horaires",
      icon_class: "fa fa-folder-open" },

    {
      id: 3,
      title: "Recapitulatif",
      icon_class: "fa fa-paper-plane" }] },




  methods: {
    stepChanged(step) {
      this.currentstep = step;
    } } });


</script>

<script>
  $(document).on("click","#cust_btn",function(){
  
  $("#myModal").modal("toggle");
  
})  
</script>