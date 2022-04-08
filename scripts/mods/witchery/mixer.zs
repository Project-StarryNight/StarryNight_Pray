import mods.gregtech.recipe.RecipeMap;

<recipemap:mixer>.recipeBuilder()
    .inputs([
        <witchery:snowbell_seeds> * 1,
        <witchery:artichoke_seeds> * 1,
        <witchery:mandrake_seeds> * 1,
        <witchery:belladonna_seeds> * 1
    ])
    .fluidInputs(<liquid:canolaoil> * 500)
    .outputs(<witchery:anointing_paste> * 1)
    .EUt(128)
    .duration(200)
    .buildAndRegister();
