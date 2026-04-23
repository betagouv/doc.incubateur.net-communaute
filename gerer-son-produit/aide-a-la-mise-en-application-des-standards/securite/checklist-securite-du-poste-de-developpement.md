# Checklist : sécurité du poste de développement

Cette checklist aide chaque membre de l'équipe à sécuriser son poste de travail
(ordinateur + comptes + habitudes de développement).

## 1. Sécurisation de base du poste

- [ ] Le système d'exploitation est à jour (mises à jour automatiques activées).
- [ ] Le disque est chiffré (BitLocker, FileVault, LUKS...).
- [ ] Une protection par mot de passe fort est active à l'ouverture de session.
- [ ] Le verrouillage automatique de session est activé (quelques minutes d'inactivité).
- [ ] Un antivirus/antimalware est activé et mis à jour (si pertinent pour l'OS).
- [ ] Les logiciels installés sont limités au nécessaire et tenus à jour.

## 2. Comptes et authentification

- [ ] Un gestionnaire de mots de passe est utilisé.
- [ ] Tous les mots de passe sont uniques, longs et robustes.
- [ ] La MFA (double authentification) est activée sur les services critiques (forge, cloud, messagerie, SSO).
- [ ] Les comptes administrateur et non administrateur sont séparés quand possible.
- [ ] Les accès des anciens membres de l'équipe sont révoqués rapidement.

## 3. Secrets et données sensibles

- [ ] Aucun secret n'est stocké en clair dans le code, les tickets ou la messagerie.
- [ ] Les secrets locaux sont stockés dans un coffre-fort adapté (vault, gestionnaire de secrets).
- [ ] Les fichiers de configuration locaux contenant des secrets sont exclus du versionnage.
- [ ] Les données de production ne sont pas copiées sur les postes développeurs sans besoin légitime.
- [ ] Les données téléchargées localement sont minimisées, chiffrées et supprimées après usage.

## 4. Hygiène Git et chaîne de développement

- [ ] La signature des commits est configurée (si exigée par l'équipe).
- [ ] Une protection contre les fuites de secrets est en place (pre-commit, scan CI).
- [ ] Les dépendances sont mises à jour régulièrement et scannées (SCA).
- [ ] Les outils de lint/tests/scans de sécurité sont exécutés en local ou en CI.
- [ ] Les droits sur les dépôts et organisations sont revus périodiquement.

## 5. Réseau et navigation

- [ ] Le pare-feu local est activé.
- [ ] L'usage de Wi-Fi public non sécurisé est évité ou protégé par VPN.
- [ ] Les extensions de navigateur sont limitées, connues et maintenues à jour.
- [ ] Les téléchargements proviennent de sources de confiance uniquement.
- [ ] Les usages personnels et professionnels sont séparés autant que possible.

## 6. Sauvegarde, continuité et réaction

- [ ] Les données de travail essentielles sont sauvegardées régulièrement.
- [ ] Une procédure existe en cas de perte/vol du poste (révocation d'accès, changement secrets, déclaration incident).
- [ ] Les contacts de réponse à incident (RSSI, responsable technique, support) sont connus.
- [ ] Le poste peut être réinitialisé rapidement (documentation minimale de reconstruction).

## 7. Vérification périodique

- [ ] La checklist est revue au moins tous les 6 mois.
- [ ] Un point sécurité est fait à l'arrivée d'un nouveau membre de l'équipe.
- [ ] Un point sécurité est fait lors du départ d'un membre de l'équipe.

## Références utiles

- [Règles d'hygiène informatique et de sécurité](regles-dhygiene-informatique-et-de-securite.md)
- [Guide d'hygiène informatique (ANSSI)](https://www.ssi.gouv.fr/guide/guide-dhygiene-informatique/)
- [MonServiceSécurisé (ANSSI)](https://www.monservicesecurise.ssi.gouv.fr/)
