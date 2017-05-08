import { BrowserModule } from '@angular/platform-browser'
import { ModuleWithProviders, NgModule } from '@angular/core'
import { HttpModule } from '@angular/http'
import { FormsModule, ReactiveFormsModule } from '@angular/forms'
import { RouterModule } from '@angular/router'

import { AppComponent } from './app.component'
import { PokemonsListComponent } from '../pokemons/pokemons-list.component'

import { PokemonsService } from '../pokemons/pokemons.service'

const appRoutes : ModuleWithProviders = RouterModule.forRoot([
  { path: '', component: PokemonsListComponent }
])

@NgModule({
  declarations: [
    AppComponent,
    PokemonsListComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule,
    appRoutes
  ],
  providers: [
    PokemonsService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
