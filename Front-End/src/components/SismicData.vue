<template>
    <div>
      <h2>Lista de Features</h2>
      <input type="text" v-model="searchQuery" placeholder="Buscar eventos sísmicos">
      <ul>
        <li v-for="feature in filteredFeatures" :key="feature.id">
          {{ feature.title }} - Magnitud: {{ feature.magnitude }}
          <!-- Mostrar detalles de cada feature -->
          <button @click="toggleDetails(feature.id)">
            {{ featureDetails[feature.id] ? 'Ocultar Detalles' : 'Mostrar Detalles' }}
          </button>
          <div v-if="featureDetails[feature.id]">
            <p>Lugar: {{ feature.place }}</p>
            <p>Fecha: {{ new Date(feature.time).toLocaleString() }}</p>
            <p>Tsunami: {{ feature.tsunami ? 'Sí' : 'No' }}</p>
            <p>Tipo de Magnitud: {{ feature.mag_type }}</p>
            <!-- Agregar formulario para agregar comentario -->
            <form @submit.prevent="addComment(feature.id)">
              <input type="text" v-model="commentText" placeholder="Agregar comentario">
              <button type="submit">Agregar Comentario</button>
            </form>
            <ul>
              <!-- Mostrar comentarios asociados a cada feature -->
              <li v-for="comment in featureComments[feature.id]" :key="comment.id">
                {{ comment.body }}
              </li>
            </ul>
          </div>
        </li>
      </ul>
      <button @click="prevPage" :disabled="page === 1">Anterior</button>
      <span>{{ page }}</span>
      <button @click="nextPage" :disabled="page * perPage >= features.length">Siguiente</button>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    data() {
      return {
        features: [],
        featureDetails: {}, // Almacenar el estado de los detalles de cada feature
        featureComments: {}, // Almacenar los comentarios asociados a cada feature
        page: 1,
        perPage: 10,
        searchQuery: '',
        commentText: ''
      };
    },
    computed: {
      filteredFeatures() {
        return this.features.filter(feature =>
          feature.title.toLowerCase().includes(this.searchQuery.toLowerCase())
        );
      }
    },
    mounted() {
      this.fetchFeatures();
    },
    methods: {
      async fetchFeatures() {
        try {
          const response = await axios.get("http://localhost:3000/features");
          this.features = response.data;
        } catch (error) {
          console.error("Error fetching features:", error);
        }
      },
      addComment(featureId) {
        const comment = this.commentText.trim();
        if (comment) {
          const payload = {
            body: comment
          };
  
          axios.post("http://localhost:3000/features/" + featureId + "/comments", payload)
            .then(response => {
              // Actualizar la lista de comentarios después de agregar uno nuevo
              this.fetchComments(featureId);
              this.commentText = ''; // Limpiar el campo de texto después de agregar el comentario
              console.log(response.data);
            })
            .catch(error => {
              console.error("Error al agregar comentario:", error);
            });
        }
      },
      async fetchComments(featureId) {
        try {
          const response = await axios.get(`http://localhost:3000/features/${featureId}/comments`);
          this.featureComments[featureId] = response.data;
        } catch (error) {
          console.error("Error fetching comments:", error);
        }
      },
      toggleDetails(featureId) {
        // Alternar el estado de visibilidad de los detalles de cada feature
        this.$set(this.featureDetails, featureId, !this.featureDetails[featureId]);
        // Si los detalles se muestran, recuperar los comentarios asociados al feature
        if (this.featureDetails[featureId]) {
          this.fetchComments(featureId);
        }
      },
      prevPage() {
        if (this.page > 1) {
          this.page--;
        }
      },
      nextPage() {
        if (this.page * this.perPage < this.features.length) {
          this.page++;
        }
      }
    }
  };
  </script>
  