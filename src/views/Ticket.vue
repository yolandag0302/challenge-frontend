<template>
  <div class="ticket pa-6">
    <v-card>
      <v-card-title class="text-h5 font-weight-regular blue-grey white--text">
        Tickets Aéreos
      </v-card-title>
      <v-card-text>
        <v-container>
          <v-row>
              <v-col
                  cols="12"
                  sm="3"
                  v-for="ticket in tickets"
              >
                <v-card>
                  <v-img
                      class="white--text align-end"
                      height="200px"
                      src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
                  >
                    <v-card-title>{{ ticket.aerolinea }}</v-card-title>
                  </v-img>

                  <v-card-subtitle class="pb-0">
                    Número de escalas: {{ ticket.escalas }}
                  </v-card-subtitle>

                  <v-card-text class="text--primary">
                    <div>Duración del vuelo: {{ ticket.duracion }}</div>

                    <div>Precio: {{ ticket.precio }}</div>
                  </v-card-text>

                  <v-card-actions>
                    <v-btn
                        color="orange"
                        text
                    >
                      Share
                    </v-btn>

                    <v-btn
                        color="orange"
                        text
                    >
                      Explore
                    </v-btn>
                  </v-card-actions>
                </v-card>
              </v-col>
          </v-row>
        </v-container>
      </v-card-text>
    </v-card>
  </div>
</template>

<script>
export default {
  data: () => ({
    drawer: null,
    tickets: [
      { precio: '$250', aerolinea: 'Avianca', escalas: 2, duracion: '1 hora' },
      { precio: '$300', aerolinea: 'Equair', escalas: 1, duracion: '1 hora' },
      { precio: '$500', aerolinea: 'Aeroregional', escalas: 2, duracion: '3 horas' },
      { precio: '$650', aerolinea: 'LATAM', escalas: 3, duracion: '1 hora' },
      { precio: '$280', aerolinea: 'TAME', escalas: 2, duracion: '1 hora' },
      { precio: '$100', aerolinea: 'Ecuatoriana Airlines', escalas: 2, duracion: '1 hora' },
      { precio: '$1000', aerolinea: 'Equair', escalas: 0, duracion: '2 horas' },
      { precio: '$690', aerolinea: 'Avianca', escalas: 2, duracion: '1 hora' },
    ],
  }),
}
</script>