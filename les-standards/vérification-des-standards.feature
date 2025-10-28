# language: fr

Fonctionnalité: Les standards de beta.gouv.fr sont homogènes
  Scénario: Le standard a une une structure cohérente
    Soit un standard
    Alors le standard a un titre principal
    Et le nom du standard est cohérent avec son titre
    Et le standard contient bien les sections Description, Ressources et Critères
    Et la section "Critères" du standard contient uniquement une liste
    Et la section "Ressources" du standard contient uniquement une liste
    Et tous les liens en ressource sont labelisés avec le titre et le nom de domaine
    Et le standard ne contient pas de balises HTML
