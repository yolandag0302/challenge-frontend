<template>
  <div class="home pa-6">
    <v-card>
      <v-card-title class="text-h5 font-weight-regular blue-grey white--text">
        BUSCA TU VUELO AL MEJOR PRECIO
      </v-card-title>
      <v-card-text>
        <v-subheader class="pa-0">
        </v-subheader>
        <v-form>
          <v-container>
            <v-row>
              <v-col
                  cols="12"
                  sm="3"
              >
                <v-text-field
                    v-model="first"
                    label="Ciudad de origen"
                    prepend-inner-icon="mdi-map-marker"
                    outlined
                ></v-text-field>
              </v-col>
              <v-col
                  cols="12"
                  sm="3"
              >
                <v-text-field
                    v-model="second"
                    label="Ciudad de destino"
                    prepend-inner-icon="mdi-map-marker"
                    outlined
                ></v-text-field>
              </v-col>

              <v-col
                  cols="12"
                  sm="3"
              >
                <v-menu
                    ref="menu"
                    v-model="menu"
                    :close-on-content-click="false"
                    :return-value.sync="date"
                    transition="scale-transition"
                    offset-y
                    min-width="auto"
                >
                  <template v-slot:activator="{ on, attrs }">
                    <v-text-field
                        v-model="date"
                        label="Fecha de salida"
                        prepend-inner-icon="mdi-calendar"
                        outlined
                        readonly
                        v-bind="attrs"
                        v-on="on"
                    ></v-text-field>
                  </template>
                  <v-date-picker
                      v-model="date"
                      no-title
                      scrollable
                  >
                    <v-spacer></v-spacer>
                    <v-btn
                        text
                        color="primary"
                        @click="menu = false"
                    >
                      Cancel
                    </v-btn>
                    <v-btn
                        text
                        color="primary"
                        @click="$refs.menu.save(date)"
                    >
                      OK
                    </v-btn>
                  </v-date-picker>
                </v-menu>
              </v-col>

              <v-col
                  cols="12"
                  sm="3"
              >
                <v-menu
                    ref="menu2"
                    v-model="menu2"
                    :close-on-content-click="false"
                    :return-value.sync="date"
                    transition="scale-transition"
                    offset-y
                    min-width="auto"
                >
                  <template v-slot:activator="{ on, attrs }">
                    <v-text-field
                        v-model="date"
                        label="Fecha de retorno"
                        prepend-inner-icon="mdi-calendar"
                        outlined
                        readonly
                        v-bind="attrs"
                        v-on="on"
                    ></v-text-field>
                  </template>
                  <v-date-picker
                      v-model="date"
                      no-title
                      scrollable
                  >
                    <v-spacer></v-spacer>
                    <v-btn
                        text
                        color="primary"
                        @click="menu2 = false"
                    >
                      Cancel
                    </v-btn>
                    <v-btn
                        text
                        color="primary"
                        @click="$refs.menu2.save(date)"
                    >
                      OK
                    </v-btn>
                  </v-date-picker>
                </v-menu>
              </v-col>
            </v-row>
            <v-row>
              <v-col
                  cols="12"
                  sm="12"
                  align="center"
              >
                <v-btn
                    to="/ticket"
                    x-large
                    color="primary"
                >
                  <v-icon left>
                    mdi-airplane-search
                  </v-icon>
                  Search
                </v-btn>
              </v-col>
            </v-row>
          </v-container>
        </v-form>
      </v-card-text>
    </v-card>
  </div>
</template>

<script>
export default {
  data: () => ({
    date: (new Date(Date.now() - (new Date()).getTimezoneOffset() * 60000)).toISOString().substr(0, 10),
    menu: false,
    // modal: false,
    menu2: false,
  }),
}
</script>