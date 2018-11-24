 Challenge

Affichage des tags d’un article
Peut-être que tu as eu le réflexe de le faire, mais dans les consignes précédentes, tu n'as pas encore impacté la création de tes entités sur la base de données. Je te laisse retrouver les commandes qui te permettent de le faire.

Une fois ta base de données à jour, insert en SQL de nouveaux tags, par exemple :

INSERT INTO `blog`.`tag` (`name`) VALUES ('development');
Toujours depuis ton serveur MySQL, associe tes articles à plusieurs tags. N'oublie pas, on est sur une relation ManyToMany.

Tu vas maintenant devoir mobiliser tes compétences fraîchement acquises :

Crée une page, répondant à l'appel de la route /tag/{name} et affichant les informations suivantes :

Le nom du tag,
La liste des articles associés à ce tag.
Ensuite, reprends la page de détail d'un article, disponible à l'url article/{id} et ajoute en bas de ta vue le code suivant :

<strong>Tags :</strong>
<ul>
    {% for tag in tags %}
        <li>{{ tag.name }} </li>
    {% else %}
        <li>No tags for this article</li>
    {% endfor %}
</ul>

A toi maintenant de reprendre le controller associé pour que ta vue affiche les tags de l'article en cours d'affichage, selon le code ci-dessus.

Critéres de validation
Ton code est disponible sur github,
Ton entité App\Entity\Tag est bien présente,
Ta classe de migration générant les 2 nouvelles tables et les contraintes d'intégrité fonctionnent,
La route vers la page de tag est fonctionnelle,
Sur la page du tag, la liste des articles associés s'affiche.
Sur la page des articles, la liste des tags associés s'affiche.
Bonus : Sur la page de tag, lors du clic sur un article de la liste, l'utilisateur est redirigé vers la page de l'article sélectionné.
Bonus II : Sur la page d'article, lors du clic sur un tag de la liste, l'utilisateur est redirigé vers la page du tag sélectionné.
