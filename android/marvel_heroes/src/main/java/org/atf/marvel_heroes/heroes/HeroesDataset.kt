package org.atf.marvel_heroes.heroes

import androidx.core.graphics.toColorInt
import org.atf.marvel_heroes.R
import org.atf.marvel_heroes.heroes.model.Hero

class HeroesDataset {

    fun getHeroes(): List<Hero> = listOf(
        Hero(1, "Dead pool", R.drawable.deadpool_preview, "#39b4bc".toColorInt()),
        Hero(2, "Iron Man", R.drawable.ironman_preview, "#5c3a77".toColorInt()),
        Hero(3, "Captain America", R.drawable.captain_america_preview, "#edc93f".toColorInt()),
        Hero(4, "Doctor Strange", R.drawable.doctor_strange_preview, "#65d6da".toColorInt()),
        Hero(5, "Thor", R.drawable.thor_preview, "#3575a1".toColorInt()),
        Hero(6, "Hulk", R.drawable.hulk_preview, "#5c3d76".toColorInt()),
        Hero(7, "Black Widow", R.drawable.black_widow_preview, "#60cdd2".toColorInt())
    )

}