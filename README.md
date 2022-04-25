# state_manager_cubit
Ajouter la dépendance bloc au fichier pubspec.yaml pour pouvoir utiliser le state cubit.
bloc = Business logic Component
Ce Design pattern permet la séparation de la présentation depuis la logique business de l'application.
L'avantage de cubit est qu'il va rendre notre application testable et réutilisable.
La classe des données(repositories) est instanciée dans ExcahngeCubit(cubit) et ainsi la partie présentation(UI) va faire un appel de state dans le cubit.
Dans le cubit, on émet des requêtes depuis la classe des données.
Voici en quelque sorte la logique business Component dont faisait l'objet de notre étude ici.

Transcription
Add the block dependency to the pubspec.yaml file to be able to use the state cubit.
block = Business logic component
This Design pattern allows the separation of the presentation from the business logic of the application.
The advantage of cubit is that it will make our application testable and reusable.
The data class (repositories) is instantiated in ExcahngeCubit(cubit) and thus the presentation part (UI) will call state in the cubit.
In the cubit, we issue requests from the data class.
Here is in a way the Component business logic which is the subject of our study here.
