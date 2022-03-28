-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 mars 2022 à 12:26
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afpa_sb_admin`
--

-- --------------------------------------------------------

--
-- Structure de la table `sb_categories`
--

CREATE TABLE `sb_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_descr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sb_categories`
--

INSERT INTO `sb_categories` (`cat_id`, `cat_descr`) VALUES
(1, 'Divers'),
(2, 'Surf'),
(3, 'Skate'),
(4, 'Snowboard'),
(5, 'Style'),
(6, 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `sb_comments`
--

CREATE TABLE `sb_comments` (
  `comment_ID` int(11) NOT NULL COMMENT 'Clé primaire',
  `comment_post_ID` int(11) NOT NULL COMMENT 'Clé vers le post',
  `comment_author` int(11) NOT NULL COMMENT 'Clé vers l''auteur',
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date du commentaire',
  `comment_content` text NOT NULL COMMENT 'Texte du commentaire'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sb_comments`
--

INSERT INTO `sb_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_date`, `comment_content`) VALUES
(1, 4, 1, '2018-10-19 08:02:54', 'Concept intéressant !'),
(2, 3, 1, '2018-10-19 08:40:18', 'Le skate c\'est chouette !'),
(5, 3, 1, '2019-01-16 08:23:51', 'Un commentaire de plus'),
(6, 1, 1, '2019-01-16 12:32:32', 'Bienvenue à l\'été !'),
(22, 12, 1, '2019-02-09 15:51:49', 'Très bon article !!!'),
(23, 12, 1, '2019-02-28 09:23:39', 'Vive la neige !'),
(44, 7, 1, '2019-03-26 21:20:53', 'Très bel article !');

-- --------------------------------------------------------

--
-- Structure de la table `sb_contacts`
--

CREATE TABLE `sb_contacts` (
  `contact_ID` int(11) NOT NULL,
  `contact_date` date NOT NULL DEFAULT current_timestamp(),
  `contact_name` varchar(25) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(25) NOT NULL,
  `contact_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sb_contacts`
--

INSERT INTO `sb_contacts` (`contact_ID`, `contact_date`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`) VALUES
(1, '2022-03-26', 'antoine', 'antoine@gmail.com', '01 02 03 04 05', 'test message de l\'internaute'),
(2, '2022-03-26', 'antoine', 'antoine@gmail.com', '01 02 03 04 05', 'test message de l\'internaute'),
(3, '2022-03-26', 'antoine Baptista', 'antoinebaptista1@gmail.com', '01 02 03 04 05', 'Test automatique d\'ajout de donnée !!'),
(4, '2022-03-26', 'Antoine Baptista', 'antoinebaptista1@gmail.com', '01 02 03 04 05', 'Test automatique d\'ajout de données !!'),
(5, '2022-03-26', 'Titi', 'titi@gmail.com', '01 02 03 04 05', 'Test'),
(6, '2022-03-26', 'tes', 'eede@gmal', '01 02 03 04 05', 'ttets'),
(7, '2022-03-26', 'antoien', 'aatta@gmmm', '01 02 03 04 05', '2222dd'),
(8, '2022-03-26', 'Antoine Baptista', 'antoine@gmail.com', '01 02 03 05 04', 'Test avec nouvelle méthode d\'envoi !!'),
(9, '2022-03-26', 'Antoine', 'antoine@gmail.com', '01 03 05 04 06', 'and (delete  from blog_users where id=3)'),
(10, '2022-03-26', 'Jean-Louis', 'jldavid@coiffure.net', '01 02 05 98 65', 'Va te faire couper les cheveux .. et pas en quatre !!'),
(12, '2022-03-26', 'Edgar Alan Poe', 'eap@livres.com', '00 00 00 00 00', 'Oh ! oh ! qu\'est-ce que cela ?\r\n\r\nCe garçon a une folie dans les jambes !\r\n\r\nIl a été mordu par la tarentule.\r\n\r\n(Tout de travers.)\r\n\r\nIl y a quelques années, je me liai intimement avec un M. William Legrand. Il était d\'une ancienne famille protestante, et jadis il avait été riche ; mais une série de malheurs l\'avait réduit à la misère.\r\n\r\nPour éviter l\'humiliation de ses désastres, il quitta La Nouvelle-Orléans, la ville de ses aïeux, et établit sa demeure dans l\'île de Sullivan, près Charleston, dans la Caroline du Sud.\r\n\r\nCette île est des plus singulières. Elle n\'est guère composée que de sable de mer et a environ trois milles de long. En largeur, elle n\'a jamais plus d\'un quart de mille. Elle est séparée du continent par une crique à peine visible, qui filtre à travers une masse de roseaux et de vase, rendez-vous habituel des poules d\'eau. La végétation, comme on peut le supposer, est pauvre, ou, pour ainsi dire, naine. on n\'y trouve pas d\'arbres d\'une certaine dimension.\r\n\r\nVers l\'extrémité occidentale, à l\'endroit où s\'élèvent le fort Moultrie et quelques misérables bâtisses de bois habitées pendant l\'été par les gens qui fuient les poussières et les fièvres de Charleston, on rencontre, il est vrai, le palmier nain sétigère ; mais toute l\'île, à l\'exception de ce point occidental et d\'un espace triste et blanchâtre qui borde la mer, est couverte d\'épaisses broussailles de myrte odoriférant, si estimé par les horticulteurs anglais. L\'arbuste y monte souvent à une hauteur de quinze ou vingt pieds ; il y forme un taillis presque impénétrable et charge l\'atmosphère de ses parfums.\r\n\r\nAu plus profond de ce taillis, non loin de l\'extrémité orientale de l\'île, c\'est-à-dire de la plus éloignée, Legrand s\'était bâti lui-même une petite hutte, qu\'il occupait quand, pour la première fois et par hasard, je fis sa connaissance. Cette connaissance mûrit bien vite en amitié, - car il y avait, certes, dans le cher reclus, de quoi exciter l\'intérêt et l\'estime. Je vis qu\'il avait reçu une forte éducation, heureusement servie par des facultés spirituelles peu communes, mais qu\'il était infecté de misanthropie et sujet à de malheureuses alternatives d\'enthousiasme et de mélancolie. Bien qu\'il eût chez lui beaucoup de livres, il s\'en servait rarement. Ses principaux amusements consistaient à chasser et à pêcher, ou à flâner sur la plage et à travers les myrtes, en quête de coquillages et d\'échantillons entomologiques ; - sa collection aurait pu faire envie à un Swammerdam. Dans ces excursions, il était ordinairement accompagné par un vieux nègre nommé Jupiter, qui avait été affranchi avant les revers de la famille, mais qu\'on n\'avait pu décider, ni par menaces ni par promesses, à abandonner son jeune massa Will ; il considérait comme son droit de le suivre partout. Il n\'est pas improbable que les parents de Legrand, jugeant que celui-ci avait la tête un peu dérangée, se soient appliqués à confirmer Jupiter dans son obstination, dans le but de mettre une espèce de gardien et de surveillant auprès du fugitif.\r\n\r\nSous la latitude de l\'île de Sullivan, les hivers sont rarement rigoureux, et c\'est un événement quand, au déclin de l\'année, le feu devient indispensable. Cependant, vers le milieu d\'octobre 18.., il y eut une journée d\'un froid remarquable. Juste avant le coucher du soleil, je me frayais un chemin à travers les taillis vers la hutte de mon ami, que je n\'avais pas vu depuis quelques semaines ; je demeurais alors à Charleston, à une distance de neuf milles de l\'île, et les facilités pour aller et revenir étaient bien moins grandes qu\'aujourd\'hui.\r\n\r\nEn arrivant à la hutte, je frappai selon mon habitude, et, ne recevant pas de réponse, je cherchai la clef où je savais qu\'elle était cachée, j\'ouvris la porte et j\'entrai. Un beau feu flambait dans le foyer.\r\n\r\nC\'était une surprise, et, à coup sûr, une des plus agréables. Je me débarrassai de mon paletot, - je traînai un fauteuil auprès des bûches pétillantes, et j\'attendis patiemment l\'arrivée de mes hôtes.\r\n\r\nPeu après la tombée de la nuit, ils arrivèrent et me firent un accueil tout à fait cordial. Jupiter, tout en riant d\'une oreille à l\'autre, se donnait du mouvement et préparait quelques poules d\'eau pour le souper. Legrand était dans une de ses crises d\'enthousiasme ; - car de quel autre nom appeler cela ? Il avait trouvé un bivalve inconnu, formant un genre nouveau, et, mieux encore, il avait chassé et attrapé, avec l\'assistance de Jupiter, un scarabée qu\'il croyait tout à fait nouveau et sur lequel il désirait avoir mon opinion le lendemain matin.\r\n\r\n- Et pourquoi pas ce soir ? demandai-je en me frottant les mains devant la flamme, et envoyant mentalement au diable toute la race des scarabées.\r\n\r\n- Ah ! si j\'avais seulement su que vous étiez ici, dit Legrand ; mais il y a si longtemps que je ne vous ai vu ! Et comment pouvais-je deviner que vous me rendriez visite justement cette nuit ? En revenant au logis, j\'ai rencontré le lieutenant G..., du fort, et très-étourdiment je lui ai prêté le scarabée ; de sorte qu\'il vous sera impossible de le voir avant demain matin. Restez ici cette nuit, et j\'enverrai Jupiter le chercher au lever du soleil.\r\n\r\nC\'est bien la plus ravissante chose de la création !\r\n\r\n- Quoi ? le lever du soleil ?\r\n\r\n- Eh non ! que diable ! - le scarabée. Il est d\'une brillante couleur d\'or, - gros à peu près comme une grosse noix, - avec deux taches d\'un noir de jais à une extrémité du dos, et une troisième, un peu plus allongée, à l\'autre. Les antennes sont...\r\n\r\n- Il n\'y a pas du tout d\'étain sur lui, massa Will, je vous le parie, interrompit Jupiter ; le scarabée est un scarabée d\'or, d\'or massif, d\'un bout à l\'autre, dedans et partout, excepté les ailes ; - je n\'ai jamais vu de ma vie un scarabée à moitié aussi lourd.\r\n\r\n- C\'est bien, mettons que vous ayez raison, Jup, répliqua Legrand un peu plus vivement, à ce qu\'il me sembla, que ne le comportait la situation, est-ce une raison pour laisser brûler les poules ? La couleur de l\'insecte, - et il se tourna vers moi, - suffirait en vérité à rendre plausible l\'idée de Jupiter.\r\n\r\nVous n\'avez jamais vu un éclat métallique plus brillant que celui de ses élytres ; mais vous ne pourrez en juger que demain matin. En attendant, j\'essayerai de vous donner une idée de sa forme.\r\n\r\nTout en parlant, il s\'assit à une petite table sur laquelle il y avait une plume et de l\'encre, mais pas de papier. Il chercha dans un tiroir, mais n\'en trouva pas.\r\n\r\n- N\'importe, dit-il à la fin, cela suffira.\r\n\r\nEt il tira de la poche de son gilet quelque chose qui me fit l\'effet d\'un morceau de vieux vélin fort sale, et il fit dessus une espèce de croquis à la plume. Pendant ce temps, j\'avais gardé ma place auprès du feu, car j\'avais toujours très-froid.\r\n\r\nQuand son dessin fut achevé, il me le passa, sans se lever. Comme je le recevais de sa main, un fort grognement se fit entendre, suivi d\'un grattement à la porte. Jupiter ouvrit, et un énorme terre-neuve, appartenant à Legrand, se précipita dans la chambre, sauta sur mes épaules et m\'accabla de caresses ; car je m\'étais fort occupé de lui dans mes visites précédentes. Quand il eut fini ses gambades, je regardai le papier, et pour dire la vérité, je me trouvai passablement intrigué par le dessin de mon ami.\r\n\r\n- oui ! dis-je après l\'avoir contemplé quelques minutes, c\'est là un étrange scarabée, je le confesse ; il est nouveau pour moi ; je n\'ai jamais rien vu d\'approchant, à moins que ce ne soit un crâne ou une tête de mort, à quoi il ressemble plus qu\'aucune autre chose qu\'il m\'ait jamais été donné d\'examiner.\r\n\r\n- Une tête de mort ! répéta Legrand. Ah ! oui, il y a un peu de cela sur le papier, je comprends. Les deux taches noires supérieures font les yeux, et la plus longue, qui est plus bas, figure une bouche, n\'est-ce pas ? D\'ailleurs la forme générale est ovale...\r\n\r\n- C\'est peut-être cela, dis-je ; mais je crains, Legrand, que vous ne soyez pas très artiste. J\'attendrai que j\'aie vu la bête elle-même, pour me faire une idée quelconque de sa physionomie.\r\n\r\n- Fort bien ! Je ne sais comment cela se fait, dit-il, un peu piqué, je dessine assez joliment, ou du moins je le devrais, - car j\'ai eu de bons maîtres, et je me flatte de n\'être pas tout à fait une brute.\r\n\r\n- Mais alors, mon cher camarade, dis-je, vous plaisantez ; ceci est un crâne fort passable, je puis même dire que c\'est un crâne parfait, d\'après toutes les idées reçues relativement à cette partie de l\'ostéologie, et votre scarabée serait le plus étrange de tous les scarabées du monde, s\'il ressemblait à ceci. Nous pourrions établir là-dessus quelque petite superstition naissante. Je présume que vous nommerez votre insecte scaraboeus caput hominis ou quelque chose d\'approchant ; il y a dans les livres d\'histoire naturelle beaucoup d\'appellations de ce genre. - Mais où sont les antennes dont vous parliez ?\r\n\r\n- Les antennes ! dit Legrand, qui s\'échauffait inexplicablement ; vous devez voir les antennes, j\'en suis sûr. Je les ai faites aussi distinctes qu\'elles le sont dans l\'original, et je présume que cela est bien suffisant.\r\n\r\n- A la bonne heure, dis-je ; mettons que vous les ayez,faites ; toujours est-il vrai que je ne les vois pas.\r\n\r\nEt je lui tendis le papier, sans ajouter aucune remarque, ne voulant pas le pousser à bout ; mais j\'étais fort étonné de la tournure que l\'affaire avait prise ; sa mauvaise humeur m\'intriguait, - et, quant au croquis de l\'insecte, il n\'y avait positivement pas d\'antennes visibles, et l\'ensemble ressemblait, à s\'y méprendre, à l\'image ordinaire d\'une tête de mort.\r\n\r\nIl reprit son papier d\'un air maussade, et il était au moment de le froisser, sans doute pour le jeter dans le feu, quand, son regard étant tombé par hasard sur le dessin, toute son attention y parut enchaînée. En un instant, son visage devint d\'un rouge intense, puis excessivement pâle. Pendant quelques minutes, sans bouger de sa place, il continua à examiner minutieusement le dessin. A la longue, il se leva, prit une chandelle sur la table, et alla s\'asseoir sur un coffre, à l\'autre extrémité de la chambre. Là, il recommença à examiner curieusement le papier, le tournant dans tous les sens.\r\n\r\nNéanmoins, il ne dit rien, et sa conduite me causait un étonnement extrême ; mais je jugeai prudent de n\'exaspérer par aucun commentaire sa mauvaise humeur croissante. Enfin, il tira de la poche de son habit un portefeuille, y serra soigneusement le papier, et déposa le tout dans un pupitre qu\'il ferma à clef. Il revint dès lors à des allures plus calmes, mais son premier enthousiasme avait totalement disparu. Il avait l\'air plutôt concentré que boudeur. A mesure que la soirée s\'avançait, il s\'absorbait de plus en plus dans sa rêverie, et aucune de mes saillies ne put l\'en arracher. Primitivement, j\'avais eu l\'intention de passer la nuit dans la cabane, comme j\'avais déjà fait plus d\'une fois ; mais, en voyant l\'humeur de mon hôte, je jugeai plus convenable de prendre congé. Il ne fit aucun effort pour me retenir ; mais, quand je partis, il me serra la main avec une cordialité encore plus vive que de coutume.\r\n\r\nUn mois environ après cette aventure, - et durant cet intervalle je n\'avais pas entendu parler de Legrand, - je reçus à Charleston une visite de son serviteur Jupiter. Je n\'avais jamais vu le bon vieux nègre si complètement abattu, et je fus pris de la crainte qu\'il ne fût arrivé à mon ami quelque sérieux malheur.\r\n\r\n- Eh bien, Jup, dis-je, quoi de neuf ? Comment va ton maître ?\r\n\r\n- Dame ! pour dire la vérité, massa, il ne va pas aussi bien qu\'il devrait.\r\n\r\n- Pas bien ! Vraiment je suis navré d\'apprendre cela. Mais de quoi se plaint-il ?\r\n\r\n- Ah ! voilà la question ! Il ne se plaint jamais de rien, mais il est tout de même bien malade.\r\n\r\n- Bien malade, Jupiter ! - Eh ! que ne disais-tu cela tout de suite ? Est-il au lit ?\r\n\r\n- Non, non, il n\'est pas au lit ! Il n\'est bien nulle part ; - voilà justement où le soulier me blesse ; j\'ai l\'esprit très-inquiet au sujet du pauvre massa Will.\r\n\r\n- Jupiter, je voudrais bien comprendre quelque chose à tout ce que tu me racontes là. Tu dis que ton maître est malade. Ne t\'a-t-il pas dit de quoi il souffre ?\r\n\r\n- oh ! massa, c\'est bien inutile de se creuser la tête. - Massa Will dit qu\'il n\'a absolument rien ; mais, alors, pourquoi donc s\'en va-t-il, deçà et delà, tout pensif, les regards sur son chemin, la tête basse, les épaules voûtées, et pâle comme une oie ?\r\n\r\nEt pourquoi donc fait-il toujours et toujours des chiffres ?\r\n\r\n- Il fait quoi, Jupiter ?\r\n\r\n- Il fait des chiffres avec des signes sur une ardoise, - les signes les plus bizarres que j\'aie jamais vus. Je commence à avoir peur, tout de même. Il faut que j\'aie toujours un oeil braqué sur lui, rien que sur lui. L\'autre jour, il m\'a échappé avant le lever du soleil, et il a décampé pour toute la sainte journée. J\'avais coupé un bon bâton exprès pour lui administrer une correction de tous les diables quand il reviendrait : mais je suis si bête, que je n\'en ai pas eu le courage ; il a l\'air si malheureux !\r\n\r\n- Ah ! vraiment ! - Eh bien, après tout, je crois que tu as mieux fait d\'être indulgent pour le pauvre garçon. Il ne faut pas lui donner le fouet, Jupiter ; - il n\'est peut-être pas en état de le supporter.\r\n\r\n- Mais ne peux-tu pas te faire une idée de ce qui a occasionné cette maladie, ou plutôt ce changement de conduite ? Lui est-il arrivé quelque chose de fâcheux depuis que je vous ai vus ?\r\n\r\n- Non, massa, il n\'est rien arrivé de fâcheux depuis lors, - mais avant cela, - oui, - j\'en ai peur, c\'était le jour même que vous étiez là-bas.\r\n\r\n- Comment ? Que veux-tu dire ?\r\n\r\n- Eh ! massa, je veux parler du scarabée, voilà tout.\r\n\r\n- Du quoi ?\r\n\r\n- Du scarabée... - Je suis sûr que massa Will a été mordu quelque part à la tête par ce scarabée d\'or.\r\n\r\n- Et quelle raison as-tu, Jupiter, pour faire une pareille supposition ?\r\n\r\n- Il a bien assez de pinces pour cela, massa, et une bouche aussi. Je n\'ai jamais vu un scarabée aussi endiablé ; - il attrape et mord tout ce qui l\'approche. Massa Will l\'avait d\'abord attrapé, mais il l\'a bien vite lâché, je vous assure ; - c\'est alors, sans doute, qu\'il a été mordu. La mine de ce scarabée et sa bouche ne me plaisaient guère, certes ; - aussi je ne voulus pas le prendre avec mes doigts ; mais je pris un morceau de papier, et j\'empoignai le scarabée dans le papier ; je l\'enveloppai donc dans le papier, avec un petit morceau de papier dans la bouche ; - voilà comment je m\'y pris.\r\n\r\n- Et tu penses donc que ton maître a été réellement mordu par le scarabée, et que cette morsure l\'a rendu malade ?\r\n\r\n- Je ne pense rien du tout, - je le sais. Pourquoi donc rêve-t-il toujours d\'or, si ce n\'est parce qu\'il a été mordu par le scarabée d\'or ? J\'en ai déjà entendu parler, de ces scarabées d\'or.\r\n\r\n- Mais comment sais-tu qu\'il rêve d\'or ?\r\n\r\n- Comment je le sais ? parce qu\'il en parle, même en dormant ; - voilà comment je le sais.\r\n\r\n- Au fait, Jupiter, tu as peut-être raison ; mais à quelle bienheureuse circonstance dois-je l\'honneur de ta visite aujourd\'hui ?\r\n\r\n- Que voulez-vous dire, massa ?\r\n\r\n- M\'apportes-tu un message de M. Legrand ?\r\n\r\n- Non, massa, je vous apporte une lettre que voici.\r\n\r\nEt Jupiter me tendit un papier où je lus :\r\n\r\nMon cher, Pourquoi donc ne vous ai-je pas vu depuis si longtemps ? J\'espère que vous n\'avez pas été assez enfant pour vous formaliser d\'une petite brusquerie de ma part ; mais non, - cela est par trop improbable.\r\n\r\nDepuis que je vous ai vu, j\'ai eu un grand sujet d\'inquiétude. J\'ai quelque chose à vous dire, mais à peine sais-je comment vous le dire. Sais-je même si je vous le dirai ?\r\n\r\nJe n\'ai pas été tout à fait bien depuis quelques jours, et le pauvre vieux Jupiter m\'ennuie insupportablement par toutes ses bonnes intentions et attentions. Le croiriez-vous ? Il avait, l\'autre jour, préparé un gros bâton à l\'effet de me châtier, pour lui avoir échappé et avoir passé la journée, seul, au milieu des collines, sur le continent. Je crois vraiment que ma mauvaise mine m\'a seule sauvé de la bastonnade.\r\n\r\nJe n\'ai rien ajouté à ma collection depuis que nous nous sommes vus.\r\n\r\nRevenez avec Jupiter si vous le pouvez sans trop d\'inconvénients. Venez, venez. Je désire vous voir ce soir pour affaire grave. Je vous assure que c\'est de la plus haute importance.\r\n\r\nvotre tout dévoué,\r\n\r\nWilliam LEGRAND.\r\n\r\nIl y avait dans le ton de cette lettre quelque chose qui me causa une forte inquiétude. Ce style différait absolument du style habituel de Legrand. A quoi diable rêvait-il ? Quelle nouvelle lubie avait pris possession de sa trop excitable cervelle ? Quelle affaire de si haute importance pouvait-il avoir à accomplir ? Le rapport de Jupiter ne présageait rien de bon ; - je tremblais que la pression continue de l\'infortune n\'eût, à la longue, singulièrement dérangé la raison de mon ami. Sans hésiter un instant, je me préparai donc à accompagner le nègre.\r\n\r\nEn arrivant au quai, je remarquai une faux et trois bêches, toutes également neuves, qui gisaient au fond du bateau dans lequel nous allions nous embarquer.\r\n\r\n-Qu\'est-ce que tout cela signifie, Jupiter ? demandai-je.\r\n\r\n- Ça, c\'est une faux, massa, et des bêches.\r\n\r\n- Je le vois bien ; mais qu\'est-ce que tout cela fait ici ?\r\n\r\n- Massa Will m\'a dit d\'acheter pour lui cette faux et ces bêches à la ville, et je les ai payées bien cher ; cela nous coûte un argent de tous les diables.\r\n\r\n- Mais au nom de tout ce qu\'il y a de mystérieux, qu\'est-ce que ton massa Will a à faire de faux et de bêches ?\r\n\r\n- Vous m\'en demandez plus que je ne sais ; lui-même, massa, n\'en sait pas davantage ; le diable m\'emporte si je n\'en suis pas convaincu. Mais tout cela vient du scarabée.');

-- --------------------------------------------------------

--
-- Structure de la table `sb_employes`
--

CREATE TABLE `sb_employes` (
  `employe_nom` varchar(150) NOT NULL,
  `employe_poste` varchar(150) NOT NULL,
  `employe_bureau` varchar(150) NOT NULL,
  `employe_age` int(11) NOT NULL,
  `employe_date_de_debut` date NOT NULL,
  `employe_salaire` varchar(50) NOT NULL,
  `employe_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sb_employes`
--

INSERT INTO `sb_employes` (`employe_nom`, `employe_poste`, `employe_bureau`, `employe_age`, `employe_date_de_debut`, `employe_salaire`, `employe_ID`) VALUES
('Tiger Nixon', 'System Architect', 'Edinburgh', 61, '2025-04-11', '$320,800', 1),
('Garrett Winters', 'Accountant', 'Tokyo', 63, '2025-07-11', '$170,750', 2),
('Ashton Cox', 'Junior Technical Author', 'San Francisco', 66, '2012-01-09', '$86,000', 3),
('Cedric Kelly', 'Senior Javascript Developer', 'Edinburgh', 22, '2029-03-12', '$433,060', 4),
('Airi Satou', 'Accountant', 'Tokyo', 33, '2028-11-08', '$162,700', 5),
('Brielle Williamson', 'Integration Specialist', 'New York', 61, '2002-12-12', '$372,000', 6),
('Herrod Chandler', 'Sales Assistant', 'San Francisco', 59, '2006-08-12', '$137,500', 7),
('Rhona Davidson', 'Integration Specialist', 'Tokyo', 55, '2014-10-10', '$327,900', 8),
('Colleen Hurst', 'Javascript Developer', 'San Francisco', 39, '2015-09-09', '$205,500', 9),
('Sonya Frost', 'Software Engineer', 'Edinburgh', 23, '2013-12-08', '$103,600', 10),
('Jena Gaines', 'Office Manager', 'London', 30, '2019-12-08', '$90,560', 11),
('Quinn Flynn', 'Support Lead', 'Edinburgh', 22, '2003-03-13', '$342,000', 12),
('Charde Marshall', 'Regional Director', 'San Francisco', 36, '2016-10-08', '$470,600', 13),
('Haley Kennedy', 'Senior Marketing Designer', 'London', 43, '2018-12-12', '$313,500', 14),
('Tatyana Fitzpatrick', 'Regional Director', 'London', 19, '2017-03-10', '$385,750', 15),
('Michael Silva', 'Marketing Designer', 'London', 66, '2027-11-12', '$198,500', 16),
('Paul Byrd', 'Chief Financial Officer (CFO)', 'New York', 64, '2009-06-10', '$725,000', 17),
('Gloria Little', 'Systems Administrator', 'New York', 59, '2010-04-09', '$237,500', 18),
('Bradley Greer', 'Software Engineer', 'London', 41, '2013-10-12', '$132,000', 19),
('Dai Rios', 'Personnel Lead', 'Edinburgh', 35, '2026-09-12', '$217,500', 20),
('Jenette Caldwell', 'Development Lead', 'New York', 30, '2003-09-11', '$345,000', 21),
('Yuri Berry', 'Chief Marketing Officer (CMO)', 'New York', 40, '2025-06-09', '$675,000', 22),
('Caesar Vance', 'Pre-Sales Support', 'New York', 21, '2012-12-11', '$106,450', 23),
('Doris Wilder', 'Sales Assistant', 'Sidney', 23, '2020-09-10', '$85,600', 24),
('Angelica Ramos', 'Chief Executive Officer (CEO)', 'London', 47, '2009-10-09', '$1,200,000', 25),
('Gavin Joyce', 'Developer', 'Edinburgh', 42, '2022-12-10', '$92,575', 26),
('Jennifer Chang', 'Regional Director', 'Singapore', 28, '2014-11-10', '$357,650', 27),
('Brenden Wagner', 'Software Engineer', 'San Francisco', 28, '2007-06-11', '$206,850', 28),
('Fiona Green', 'Chief Operating Officer (COO)', 'San Francisco', 48, '2011-03-10', '$850,000', 29),
('Shou Itou', 'Regional Marketing', 'Tokyo', 20, '2014-08-11', '$163,000', 30),
('Michelle House', 'Integration Specialist', 'Sidney', 37, '2002-06-11', '$95,400', 31),
('Suki Burks', 'Developer', 'London', 53, '2022-10-09', '$114,500', 32),
('Prescott Bartlett', 'Technical Author', 'London', 27, '2007-05-11', '$145,000', 33),
('Gavin Cortez', 'Team Leader', 'San Francisco', 22, '2026-10-08', '$235,500', 34),
('Martena Mccray', 'Post-Sales support', 'Edinburgh', 46, '2009-03-11', '$324,050', 35),
('Unity Butler', 'Marketing Designer', 'San Francisco', 47, '2009-12-09', '$85,675', 36),
('Howard Hatfield', 'Office Manager', 'San Francisco', 51, '2016-12-08', '$164,500', 37),
('Hope Fuentes', 'Secretary', 'San Francisco', 41, '2012-02-10', '$109,850', 38),
('Vivian Harrell', 'Financial Controller', 'San Francisco', 62, '2014-02-09', '$452,500', 39),
('Timothy Mooney', 'Office Manager', 'London', 37, '2011-12-08', '$136,200', 40),
('Jackson Bradshaw', 'Director', 'New York', 65, '2026-09-08', '$645,750', 41),
('Olivia Liang', 'Support Engineer', 'Singapore', 64, '2003-02-11', '$234,500', 42),
('Bruno Nash', 'Software Engineer', 'London', 38, '2003-05-11', '$163,500', 43),
('Sakura Yamamoto', 'Support Engineer', 'Tokyo', 37, '2019-08-09', '$139,575', 44),
('Thor Walton', 'Developer', 'New York', 61, '2011-08-13', '$98,540', 45),
('Finn Camacho', 'Support Engineer', 'San Francisco', 47, '2007-07-09', '$87,500', 46),
('Serge Baldwin', 'Data Coordinator', 'Singapore', 64, '2009-04-12', '$138,575', 47),
('Zenaida Frank', 'Software Engineer', 'New York', 63, '2004-01-10', '$125,250', 48),
('Zorita Serrano', 'Software Engineer', 'San Francisco', 56, '2001-06-12', '$115,000', 49),
('Jennifer Acosta', 'Junior Javascript Developer', 'Edinburgh', 43, '2001-02-13', '$75,650', 50),
('Cara Stevens', 'Sales Assistant', 'New York', 46, '2006-12-11', '$145,600', 51),
('Hermione Butler', 'Regional Director', 'London', 47, '2021-03-11', '$356,250', 52),
('Lael Greer', 'Systems Administrator', 'London', 21, '2027-02-09', '$103,500', 53),
('Jonas Alexander', 'Developer', 'San Francisco', 30, '2014-07-10', '$86,500', 54),
('Shad Decker', 'Regional Director', 'Edinburgh', 51, '2013-11-08', '$183,000', 55),
('Michael Bruce', 'Javascript Developer', 'Singapore', 29, '2027-06-11', '$183,000', 56),
('Donna Snider', 'Customer Support', 'New York', 27, '2025-01-11', '$112,000', 57);

-- --------------------------------------------------------

--
-- Structure de la table `sb_posts`
--

CREATE TABLE `sb_posts` (
  `post_ID` int(11) NOT NULL COMMENT 'Clé primaire',
  `post_author` int(11) NOT NULL COMMENT 'Clé vers l''auteur',
  `post_category` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date du post',
  `post_content` text NOT NULL COMMENT 'Contenu du post',
  `post_title` varchar(255) NOT NULL COMMENT 'Titre du post',
  `post_img_url` varchar(255) NOT NULL COMMENT 'Url de image du post'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sb_posts`
--

INSERT INTO `sb_posts` (`post_ID`, `post_author`, `post_category`, `post_date`, `post_content`, `post_title`, `post_img_url`) VALUES
(1, 1, 2, '2017-11-13 15:33:09', 'Ça y est l’été arrive… enfin si on ne regarde pas par la <b>fenêtre</b>… ! Ici, chez Allons rider on rêve d’une journée plage avec des vagues sympas et pleins de nanas qui ont le sourire. Toi aussi ? Et bien ça tombe bien parce que c’est justement ce qui nous attend le samedi 23 juin !', 'VIENS RIDER ENTRE NANAS ! ', 'https://i1.wp.com/www.allonsrider.fr/wp-content/uploads/2018/06/elizeu-dias-520684-unsplash.jpg?resize=759%2C500'),
(3, 1, 3, '2018-06-25 15:07:46', 'Quelques trucks qui grincent sur le coping en fer, des roulements qui n’ont jamais fait autant de tours sur eux-même, une multitude de possibilités de rider, mais aussi de s’éclater sur un bitume tout aussi bouillant que le public, et surtout beaucoup de style. Quand on assiste au Redbull Bowl Rippers, on s’en souvient. Non seulement parce que la crème de la crème du skate se retrouve dans un même skatepark pendant 2 jours mais aussi parce qu’on ne fait pas de crème sans casser des oeufs. Et c’est assez impressionnant.\r\nPar chance, Motorola nous a convié à nous y rendre pour y capturer un maximum d’images. Retour sur l’événement skate qui a marqué nos esprits.\r\nA première vue, on se croirait aux states. Le bowl a été complètement repeint, les juges sont hissés sur leur chaises blanches, les speakers déchainés, un gros 4×4 Redbull monte la garde et les spectateurs sont très stylisés. On ne ressent pas de pression, mais plutôt beaucoup d’excitation de la part des skaters qui courent partout autour du bowl en attendant leur tour. Alors que nous, en zone presse, on boit (du Redbull organic) et on s’imagine, là bas, à leur place l’instant de quelques secondes avant que le speaker ne nous rappelle à la réalité.\r\nImaginer quelques instants l’adrénaline qu’ils peuvent ressentir une fois lancés dans ces courbes, acclamés par le public Marseillais, cerveaux probablement déconnectés.\r\nLe local Vincent Matheron, lui, n’a pas eu de mal à déconnecter son cerveau en finale de la compétition pour balancer des tricks à la hauteur du level de ses trois concurrents brésiliens (Murilo Peres, le skater aux 9 médailles X-Games et les tout-juste-majeur Luiz Francisco et Pedro Barros) et de deux américains (Chris Russell et Kevin Kowalski). Un pari perdu plus tard, il finira, avec le sourire*, sur la 5ème marche du podium devancé par le gagnant Pedro Barros. *sanglant du Joker dessiné sur le visage\r\n\r\nMais si à Marseille on a l’habitude de soutenir les skaters lors de cet event qui fête sa troisième edition, ça en est tout autre pour les skateuses.\r\n« Jamais deux sans trois » n’est pas au goût de Redbull et ça ne nous étonne que très peu au vu de l’image fun et désinvolte de la marque qui joue bien souvent sur le terrain de l’inattendu. Deux éditions sans skateuses ont suffit à Redbull pour les faire intervenir lors de leur troisième volets. Et les filles ne sont pas là pour jouer les pompom girls…\r\nAu programme, 12 nanas talentueuses venues s’affronter les unes contre les autres mais toujours avec une certaine solidarité. Sur la rampe de lancement, pas question de passer son tour, elles y vont franco et savent exactement ce qu’elles font.\r\nChez les françaises on ressent une certaine pression. Probablement celle de voir débarquer 10 skateuses du monde entier venir déchirer leur home spot. Pour la locale Maya Jacquemin c’est « formateur de skater entourée de pro ». Et pro, c’est le mot.\r\nParmi les skateuses, une icône de la discipline: Lizzie Armanto. Cette skateuse originaire des Etats Unis s’était faite remarquer trois jours plus tôt pour avoir été la première femme à skater le looping 360° de Tony Hawk. Rien que ça.\r\nMais ce n’est pas tout puisque Brighton Zeuner était aussi de la partie. A seulement 14 ans, elle est la plus jeune médaillée de l’histoire des X-Games. Nous l’avons rencontré.\r\n\r\nSalut Brighton, comment tu te sens aujourd’hui ?\r\n\r\nJe dois dire que je suis plutôt nerveuse parce que ce n’est pas une petite compétition mais je suis toujours comme ça lors des contest. J’ai surtout super hâte de skater ! Et puis, j’ai de la chance cette fois je ne suis pas jet lag puisque j’étais en Suède juste avant.\r\nQue fais tu pour te détendre quand tu es nerveuse ? As tu des rituels ? \r\n\r\nEt bien quand je suis nerveuse, j’essaie de penser à autre chose, je ne sais pas trop… J’essaie de me détendre en skatant mais ça craint parce qu’au final je suis stressée pour la competition mais il n’y a qu’en skatant que je peux être detendue. Alors bah j’attend mon tour nerveusement… Mais quand je suis dans le bowl ça va beaucoup mieux !\r\n\r\nTu n’étais jamais venue à Marseille, que penses-tu du bowl ? \r\n\r\nOui c’est la première fois que je viens ici et je trouve le bowl différent de ce que j’ai l’habitude de skater. Mais je pense que c’est une bonne chose ! C’est important pour les skaters de pouvoir s’adapter à de nouveaux skateparks comme celui là et c’est plutôt amusant de tester de nouvelles choses donc oui… c’est très différent mais c’est fun !\r\nPour la première fois, le Redbull Bowl Rippers ouvre la compétition aux nanas. Qu’est ce que tu penses de ça ? \r\n\r\nJe trouve ça super cool qu’ils commencent à mettre le skate féminin au même niveau que les mecs parce que les filles se donnent autant que les gars. Puis j’ai beaucoup de potes skaters qui trouvent ça bien, ils aiment bien quand une nana vient skater avec eux. Ça apporte de la visibilité au monde du skate féminin, c’est génial pour la future génération !\r\n\r\nCette après midi c’est juste un entrainement pour les filles, demain seulement les choses sérieuses démarrent. Quels sont tes objectifs ? \r\n\r\nJe vais juste skater et tenter de m’amuser. Je n’ai pas envie de me mettre la pression sur les épaules, je vais juste skater et voir ce que ça donne. Et puis, la France c’est super beau, c’est cool de pouvoir skater ici et d’aller à la plage en suivant. Tu vois, juste du fun.\r\nFun, c’est le mot qui résume plutôt bien ce contest organisé par Redbull. Tous les athlètes sont à fond et on ne s’ennuie pas une seule seconde. On redoute même le moment où l’envie d’évacuer les litres de Redbull engorgé va se faire sentir. Tout ce qu’on a à faire est d’ouvrir grand les yeux, moto g6 à la main.\r\nFinalement, c’est la Brésilienne Yndiara Asp qui prend la première marche du podium chez les filles. Elle devance ainsi Brighton Zeuner et l’Australienne Poppy Starr Olsen sur ce légendaire Bowl du Prado. Tandis que les Françaises Maya Jacquemain et Alice Attali terminent respectivement cinquième et sixième. \r\nEn tout cas nous on resterait bien un jour de plus que l’effervescence redescende pour pouvoir tester le bowl. A votre avis, on a résisté ?\r\n\r\nMerci Motorola pour cette super expérience. Retrouvez toutes les infos du Moto G6 par ici. \r\n\r\nPhotos: Lucas Cerri et/ou prise avec le moto G6.', 'RENCONTRE AVEC LA CRÈME DU SKATE FÉMININ AU REDBULL BOWL RIPPERS', 'https://i1.wp.com/www.allonsrider.fr/wp-content/uploads/2018/09/322A0438.jpg?resize=759%2C500'),
(4, 1, 5, '2018-09-27 15:20:36', 'Souviens toi, il y a quelques semaines, je te parlais de ce surfshop Lastage, le plus green au monde, situé à Biarritz. Cette nouvelle marque française, qui s’adresse aux 15-30 ans, propose des produits éco-responsables.Cela va même plus loin puisque toute la marque a été pensé autour de ces valeurs. Les shops sont faits à partir d’objets recyclés, 10% de remise sont offerts aux clients qui ramènent en magasin de vieilles fringues, la production est faite en Turquie pour sa culture de coton biologique, respectant des normes internationales strictes quant aux conditions de travail et les produits sont fabriqués à partir de matières recyclées. Pas de production française donc, mais des compromis qui permettent d’avoir des produits à la foisde haute qualité, respectueux de l’environnement et à des prix raisonnables.Le shop de GuidelDu coup j’ai profité d’un WE surf dans le Morbihan pour passer au seul shop breton de la marque, à Guidel (près de Lorient). Tenu par Yann, baroudeur qui a passé 8 mois au Maroc, ce shop sent bon le surf, le vrai. Car Yann est aussi moniteur, il gère en parallèle l’école Yousurf. Du coup la boutique est partagée entre produits Lastage et espaces pour le matos de l’école. On est loin de certains shops de grandes marques australiennes tenus par des vendeurs qui ne sont jamais montés sur une planche de leur vie. Ici certains clients arrivent pieds nus, combi plein de sable et cheveux mouillés. Ça respire l’amour du surf.Le boardshort LastageLe produit phare, c’est le boardshort, fabriqué à 90% de bouteilles en plastique recyclées. J’ai jeté mon dévolu sur le modèle Pro Duc III Pop Corn. Coupe très courte (17) et couleurs pastel, de jaune et de bleu, ce qui lui donne un look assez rétro, très 70s-80s. Et après 2h de surf sur la côte sauvage de Quiberon, je dois dire que je suis plutôt impressionné par le produit. J’avais peur que le short soit rigide, car fait de bouteilles en plastique recyclées. Mais en fait pas du tout, il est aussi « élastique » que mon Mirage de Rip Curl, grâce au 10% restant, le stretch. Et c’est plutôt cool de se dire que tu surfes avec un boardshort qui est fait à partir de bouteilles que certaines personnes laissent traîner sur la plage. C’est un peu une revanche de cette bouteille Vittel laissée entre deux rochers.Autre originalité du short, son système de serrage velcro. Unique au monde et breveté Lastage d’après leur site internet. Ici pas de lacets pour ensuite avoir un nœud qui pend, mais que du velcro, qui permet de l’ajuster à sa taille. A la fois malin et esthétique. Mais ce qui engendre pour moi le seul petit hic du produit : il n’y a pas de lacets à insérer dans le loop de mon top (pour éviter qu’il remonte). Mais à priori les tops de la marque Lastage ont eux un petit bouton qui s’accroche aux shorts. Tout a donc été pensé pour à la fois le surfeur pratiquant et pour le chilleur soucieux de son look sur la plage.Niveau prix, on est dans les standards de ce que les grandes marques comme Quiksilver, Rip Curl ou Billabong pratiquent. Aux alentours de 49 € pièce pour l’entrée de gamme et jusqu’à 75 € pour la gamme pro model. A la différence que c’est une marque française, et que les matières utilisées viennent de plastique recyclé. Ce qui n’est pas négligeable.Pour conclure je dirais que c’est vraiment sympa de surfer avec un produit au look vintage et très moderne dans son procédé de fabrication éco-responsable.  Si tu as la chance de surfer juste en boardshort dans une eau chaude, c’est parfait. D’ailleurs ce short, il serait parfait l’été, en longboard, pour retrouver des sensations de glisse bien old school. Un retour aux sources.', 'Test du boardshort Lastage, fabriqué avec des bouteilles recyclées', 'https://insideurosima.files.wordpress.com/2016/02/eurosima-lastage-4.jpg?w=840&h=560'),
(5, 1, 5, '2018-10-21 13:38:44', 'Historique\r\nL\'an dernier le Big Festival disparaissait après 8 éditions consécutives. Au début, c’est l’argument technique qui avait été évoqué puisque le site du stade Aguilera était en rénovation. Mais c’est finalement le budget qui a posé problème car les organisateurs réclamaient 300.000 euros de participation à la Mairie de Biarritz soit le double par rapport aux années précédentes pourra t-on lire dans le mediabask.\r\n\r\nRésultat, 2017 s’est passé au OKLM avec des rendez-vous hebdomadaires en plein air à la Cité de l’océan avec des artistes un peu moins connus mais pour autant tout aussi agréable. \r\n\r\nLe nouveau festival\r\n2018, c’est le retour d’un projet ambitieux avec « Biarritz en été » qui sera donc le nouveau festival branché du coin. Organisé par la Ville de Biarritz et le Centre des Musiques Actuelles l’Atabal (et non des parigos), le festival se veut « authentique » et « fédérateur pour notre territoire » déclara Sylvie Claracq présidente de l’Atabal pour mediabask.\r\n\r\nLe festival se déroulera donc dans les jardins de la Cité de l’océan du 20 au 22 juillet prochain. \r\n\r\nProgramme\r\nAujourd’hui voici les têtes d’affiches qui ont été divulguées : Phoenix, Etienne Daho, Cigarrettes After sex, Juliette Armanet, Lomepal, The Black Madonna, L’impératrice, Angèle, Agar Agar, Caballero & JeanJass, Yellow Days, Malick Djoudi et Kepa\r\n\r\nPendant la journée, un village sera installé à la Milady pour célébrer la culture locale, gastronomique, surf et musicale avec la participation de collectifs musicaux gratuit. \r\n\r\nPour le reste, la billetterie est d’ores et déjà ouverte avec des prix variants entre 83 et 113 euros selon le moment de votre réservation (plus vous réservez tôt, mieux c’est !\r\n\r\nUne bonne nouvelle qui nous réchauffe le coeur malgré ce temps pourri… vivement l’été ! ', '« Biarritz en été » le nouveau festival qui remplacera le BIG le 20/22 juillet prochain', 'https://www.surftraining.com/wp-content/uploads/2016/04/surftraining-9-1-1.jpg'),
(6, 1, 2, '2018-10-21 14:16:53', 'En ce 2 janvier 2018, jour où les houles ne cessent de s’enchainer à Nazaré (Portugal), il est de bon ton de revenir sur l’une des adeptes et surtout des pionnières de surf de gros : la surfeuse brésilienne Maya Gabeira\r\n\r\nIssue d’un père politicien (Fernando Gabeira) fondateur du Parti vert brésilien et très engagé dans la lutte armée contre la dictature militaire à la fin des années 60 (il participera même à l’enlèvement de l’ambassadeur américain au Brésil Charles Elbrick le 7 septembre 1969), c’est loin de la politique que la surfeuse de 30 ans va évoluer mais c’est surement là l’origine de son tempérament engagé.\r\n\r\nCar son « combat » à elle, c’est celui d’affronter les vagues géantes partout dans le monde et autant vous dire qu’en la matière, elle n’y va pas avec le dos de la cuillère.\r\n\r\nA son actif : 5 Billabong XXL awards consécutifs de 2007 à 2012 dont la plus grosse vague jamais surfée par une femme en 2009 où elle signe un 14 mètres à Dungeons en Afrique du Sud…\r\n\r\nMais Maya Gabeira c’est aussi : un traumatisme crânien en aout 2011 sur une session de tow-in (surf tracté) sur un gros Teahupoo à Tahiti où elle se prendra 5 vagues sur la tête pour finir à demi-consciente et un wipeout sur une vague XXL à Nazaré (Portugal) en 2013 où elle frôle la mort et sera réanimée de justesse par son coéquipier brésilien Carlos Burle… s’en suit 2 ans de rééducation avec des opérations au dos, au nez etc..\r\n\r\nDepuis 2015, elle revient tranquillement sur les spots et se remet à charger à Nazaré et à Hawaï notamment.\r\n\r\nUne athlète au parcours exceptionnel qui nous prouve que même si le surf de gros se démocratise cela reste un challenge dangereux où il est facile d’y laisser la vie…\r\n\r\nEn espérant que 2018 soit une belle année à vague pour cette vétéran qui en a inspiré plus d’un(e)… pour l’instant ça à l’air d’être plutôt bien partie !', 'Maya Gabeira portrait d’une surfeuse pionnière de retour dans les vagues XXL', 'https://www.voyageavecnous.fr/wp-content/uploads/2021/07/nazare.jpg'),
(7, 1, 2, '2018-10-21 22:16:37', 'Pour la première fois je laisse la parole à une autre personne, Xavier, qui nous raconte son dernier surf trip en Irlande. Il saura à coup sûr vous donner envie de partir visiter cette belle île pour y surfer, mais pas que !\r\n\r\nRécit de mon surf trip en Irlande\r\nPendant que certains voyagent aux quatre coins du monde pour trouver les meilleurs spots de surf possibles (comme ce voyage au Chili par exemple), il suffit parfois d’écumer les plages d’Europe pour trouver de nombreux paradis sur terre… Ou plutôt sur mer. Ma dernière aventure m’a récemment mené en Irlande, pays connu pour ses bières (Guinness, Kilkenny), ses Leprechauns et ses trèfles à quatre feuille mais aussi pour le surf qui s’impose de plus en plus comme une destination de choix pour les passionnés de rouleaux, au point d’être devenue en quelques années seulement une destination surf majeure dans la zone Europe.\r\n\r\nBon, je vous l’accorde, il s’agit surtout d’une destination de choix pour les surfeurs qui n’ont pas peur de se frotter aux eaux froides, très froides. En effet, au meilleur moment de l’année, soit entre juillet et septembre, la température de l’eau sur l’île émeraude ne dépasse pas les 15° en moyenne. Entre novembre et janvier, elle peut même tomber sous la barre des 11°. Autant dire que les surfeurs frileux ont tout intérêt à s’abstenir et à choisir une autre destination !\r\nHeureusement, en marge de ce léger inconvénient, les côtes irlandaises disposent aussi de nombreux atouts qui font d’elles un « paradis froid », comme l’avait expliqué Kelly Slater après avoir visité les 5 spots incontournables à tester dans le pays, allant d’Inchydoney, parfaitement adapté aux débutants, à Easky, qui abrite la Fédération de surf irlandaise, en passant par The Peak, qui a longtemps constitué une étape des Championnats Européens de surf et qui s’impose indéniablement comme étant une des vagues les plus célèbres d’Irlande. C’est une certitude, si vous ne devez visiter qu’un spot, privilégiez celui-là, accessible toute l’année avec des vagues de bonne qualité.\r\n\r\n L’Irlande n’est pas un très grand pays. Vous n’avez donc aucune raison de vous limiter à un seul spot ! D’ailleurs, pas très loin de The Peak, près de Bundoran, vous pourrez trouver un autre spot moins connu du grand public, baptisé Rossnowlagh, mais qui abrite aussi des vagues qui peuvent être très impressionnantes. D’ailleurs, chaque année, nombreux sont les surfeurs qui viennent s’y frotter puisque la ville côtière accueille annuellement la plus vieille compétition de surf du pays, les Irish Inter Counties Surfing Championships.\r\n\r\nSachez-le, de façon générale, l’ensemble de la côte du Donegal figure dans les 50 meilleures destinations de surf au monde établies par la chaîne américaine CNN, avec des spots qui rivalisent directement avec les spots d’Hawaii ou de la Californie. Vous pouvez donc simplement vous rendre sur place et trouver la plage la plus adaptée à vos envies et votre niveau.\r\n\r\nPour les plus aventuriers et qui n’ont peur de rien de surfer du gros, je vous conseillerais aussi d’aller faire un tour dans le comté de Sligo, à Mullaghmore. La célèbre vague que les chargeurs de la planète viennent régulièrement défier en Hiver. Montée d’adrénaline garantie \r\nCe qui fait la force de l’Irlande en matière de surf, c’est clairement son côté authentique et brut, sauvage même. Si vous avez la chance de rencontrer d’autres surfeurs au cours de votre périple sur l’île verte, vous pouvez avoir l’assurance que ces rencontres seront riches en témoignages forts et en valeurs partagées.\r\n\r\nEt puisque l’on vous disait plus tôt que l’Irlande est aussi connue pour ses pubs et ses bières, je ne saurais que vous recommander de poser votre boardbag à un moment de votre séjour pour mettre le cap sur la civilisation et notamment la capitale de l’Irlande, Dublin, qui regorge de tavernes incontournables. Il n’y a certes pas de vagues à Dublin, mais la ville est imprégnée d’une atmosphère que l’on ne retrouve qu’en Irlande et qui fait indéniablement partie intégrante des raisons pour lesquelles vous devez mettre le cap sur cette belle île.', 'Surf Trip en Irlande : l’île de la Guinness et des côtes sauvages', 'https://www.beachbrother.com/img/pictures/2016/20161206/thumbnail/1612069165.jpg'),
(10, 1, 1, '2018-10-27 17:31:05', 'Le Bayonnais nous dévoile son amour pour la région en compilant plus de 10,000 clichés capturés entre mai et septembre dans un timelapse à couper le souffle !\r\n« Entre Pays Basque, vallée d’Aspe ou encore dans la vallée de Cauterets, nous sommes gâtés par les Pyrénées ! » pourra t-on lire en titre de sa vidéo Facebook.\r\n\r\nLe photographe n’en était pas à son premier coup d’essai et avait déjà réalisé une compilation des Landes au Pays Basque l’été dernier . Un nouveau projet est en cours pour cet hiver nous dit Sud Ouest en attendant régalez-vous !\r\n<a href=\"https://youtu.be/emz2uQQvw44\">La vidéo ici</a>\r\n\r\n', '« Amour »: le dernier timelapse du bayonnais Xabi Barreneche', 'https://static.en-pays-basque.fr/wp-content/uploads/2020/07/dsc09368-1600x690.jpg'),
(11, 1, 1, '2019-01-28 14:12:13', 'Qui dit nouvelle année, dit bonnes résolutions. Le mois de janvier est la période idéale pour se fixer des objectifs et apporter du changement positif à sa vie. Mais statistiquement parlant, la réussite des résolutions du Nouvel An est proche de 0. Une étude de l\'université de Scranton a démontré que 92% de ceux qui en prennent ne les tiennent pas. Oups.\r\n\r\nChez Vague et Vent, nous vous avons concocté aussi une liste non-exhaustive de bonnes résolutions, à commencer par arrêter de faire des résolutions qu\'on ne pourrait pas tenir.\r\n\r\n \r\n\r\nSe fixer des objectifs réalisables\r\nParce que les objectifs du mois de janvier c\'est bien « joli joli », mais si on ne s\'y tient pas, ça ne sert à rien de les prendre. Il suffit parfois d\'être honnête avec soi-même. Non, nous ne serons pas sur le podium du World Surfing Games 2017. Toi oui ? Nous non. Le meilleur moyen de faire de vrais progrès est de se concentrer sur des objectifs plus modérés et réalistes. Tu auras d\'autant plus de chances de t\'y tenir, et tu auras davantage confiance en ta capacité à changer et progresser.\r\n\r\n \r\n\r\nArrêter de procrastiner\r\nNous avons toujours 1000 excuses de ne pas faire ce que nous nous sommes pourtant promis de faire. Et même ce que nous avons envie de faire. Il faut l\'avouer, nous sommes tous parfois atteint de « flémingite aiguë », même quand il s\'agit de se jeter à l\'eau. La procrastination est une puissante habitude dont il est difficile de se détacher.\r\n\r\nAlors si quand tu jettes un petit coup d\'œil à ta montre, les conditions météorologiques sont favorables, bouge-toi ! Demain, le temps ne le sera peut-être pas et après demain encore moins. Mets ta flemme de côté et sors ton matos. Fais-le maintenant.\r\nEtre plus courageux face au froid\r\nIl faut quand même avouer qu\'en plein hiver, le froid a tendance à nous décourager très vite. C\'est vrai, on se les caille ! Mais dans le fond, que préfères-tu, ne pas surfer ou souffrir du froid ? Nous, le choix est vite fait ! Equipe-toi ! Investis une bonne fois pour toute dans des gants, chaussons et une cagoule.\r\n\r\nFaire une playlist\r\nQue ce soit pour aller rider, ou naviguer, nous avons tous besoin d\'un peu de musique pour nous mettre la pêche. On ne parle pas de la vieille playlist que tu écoutes depuis l\'été dernier, voire l\'hiver dernier. Nous sommes au mois de janvier, sache qu\'il est grand temps de la changer. Enfile ton casque Skullcandy et prends le temps de faire une playlist pour te motiver lors de ta prochaine sortie.\r\nAcheter sa propre wax\r\nTu vois de quoi on parle ? Oui, cette petite chose qui ne coûte pas grand-chose et qui pourtant est bien utile. C\'est dingue, que l\'on soit surfeur débutant ou expérimenté, personne n\'a jamais de wax avec soi. Du coup, soit on taxe une énième fois le mec d\'à côté sur le parking, soit on glisse sur sa planche. En 2017, achète ta propre wax et tout le monde sera content, même le mec d\'à côté. Evite cependant de l\'oublier à chaque fois.\r\n\r\nEssayer une cure de Surf Thérapie\r\nDe quoi s\'agit-il ? La Surf Thérapie est une thalassothérapie naturelle basée sur la pratique régulière du surf, la marche dans le sable et la natation en bord de mer.\r\n\r\nTu ne pratiques pas le surf ? Good news, grâce au standup paddle, il n\'est plus indispensable d\'être un as de la glisse pour faire du surf. Il est possible de surfer sans vagues grâce au surf debout à la rame. Tout le monde peut s\'essayer à la Surf Thérapie, toi y compris.\r\n\r\nCette méthode aide à rester en forme, à stabiliser son poids, à atténuer le stress et même à booster sa libido ! Ok, il est temps pour nous aussi de nous mettre à la Surf Thérapie.\r\nFaire du bien à la planète\r\nToi aussi, ça t\'horripile de voir des déchets sur la plage ou sur les pistes ? Nous te proposons de lutter avec nous contre la pollution de notre environnement. Il y a des petits gestes tout bêtes à adopter comme ramasser le sac plastique, la canette de bière ou le mégot (et pourquoi pas les trois) qui traine sur la plage et le mettre à la poubelle. Un petit geste régulier pour un bien durable ça ne peut pas nous faire de mal.\r\n\r\nSi tu veux aller plus loin, tu peux aussi participer à une des collectes Initiatives Océanes organisées par la Surfrider Foundation Europe.\r\n\r\nEssayer de nouvelles choses\r\nOn ne va pas se mentir, quand on est adepte à un sport de glisse on est un peu réfractaire à tester un autre. Mais essayer une nouvelle activité ne peut être que bénéfique. Cela  pourrait te servir à rendre ton entraînement plus intéressant en cas de lassitude. Il existe tout un monde de sports de glisse, élargi ton horizon !\r\nNous te souhaitons à nouveau une bonne année, beaucoup de bonheur et surtout de belles vagues ! N\'hésite pas à nous laisser un commentaire et nous donner tes bonnes résolutions.', 'Les bonnes résolutions de Vague et Vent', 'https://www.vagueetvent.com/blog/wp-content/uploads/2017/01/Procrastination-%C2%A9RossSokolovski.jpg'),
(12, 4, 4, '2019-02-06 08:20:09', 'Les fortes chutes de neige des dernières semaines nous ont rapprochés de plusieurs records, surtout dans l\'Est. Attention : Vous pouvez descendre seul dans la poudreuse blanche, alors n\'oubliez pas d\'emmener le plus de copains possible sur la piste la prochaine fois que vous irez à la montagne ! Ouvert sous www.snowbuddies.ch/fr/trouve-des-rides Rides pour vos entreprises et vous verrez, la communauté remercie sous forme de participations des compagnons de route de bonne humeur.\r\n\r\nLe Freeride et le Touring ensemble, c\'est beaucoup de plaisir et vous pouvez profiter à l\'infini l\'un de l\'autre. Sentez la vibration de la communauté !', 'La saison est commencée - et nous conduisons : Ensemble', 'https://skipass.fr/p/news/219593/header-val-thorens-week-end-parfait-15215-1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `sb_users`
--

CREATE TABLE `sb_users` (
  `ID` int(11) NOT NULL COMMENT 'Clé primaire',
  `user_login` varchar(20) NOT NULL COMMENT 'Login',
  `user_pass` varchar(32) NOT NULL COMMENT 'Password',
  `user_email` varchar(100) NOT NULL COMMENT 'Email',
  `display_name` varchar(100) NOT NULL COMMENT 'Nom affiché',
  `user_photo` varchar(45) NOT NULL DEFAULT 'user.jpg',
  `user_admin` tinyint(1) NOT NULL DEFAULT 0,
  `user_token` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sb_users`
--

INSERT INTO `sb_users` (`ID`, `user_login`, `user_pass`, `user_email`, `display_name`, `user_photo`, `user_admin`, `user_token`) VALUES
(1, 'phg', '4eaa2c63e55d0a3a233d8cb6b7871cd0', 'phgiraud@cogitium.com', 'Philippe Giraud', 'user.jpg', 0, NULL),
(3, 'lambda', '4eaa2c63e55d0a3a233d8cb6b7871cd0', 'test@mail.com5', 'Lambda', 'user.jpg', 0, NULL),
(4, 'admin', '4eaa2c63e55d0a3a233d8cb6b7871cd0', 'info@cogitium.com', 'SuperAdmin', 'user2.jpg', 1, NULL),
(5, 'test2', '4eaa2c63e55d0a3a233d8cb6b7871cd0', 'test2@mail.com', 'Test Test 2', 'user.jpg', 0, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sb_categories`
--
ALTER TABLE `sb_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `sb_comments`
--
ALTER TABLE `sb_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `fk_blog_comments_blog_posts1` (`comment_post_ID`),
  ADD KEY `fk_blog_comments_blog_users1` (`comment_author`);

--
-- Index pour la table `sb_contacts`
--
ALTER TABLE `sb_contacts`
  ADD PRIMARY KEY (`contact_ID`);

--
-- Index pour la table `sb_employes`
--
ALTER TABLE `sb_employes`
  ADD PRIMARY KEY (`employe_ID`);

--
-- Index pour la table `sb_posts`
--
ALTER TABLE `sb_posts`
  ADD PRIMARY KEY (`post_ID`),
  ADD KEY `fk_blog_posts_blog_users` (`post_author`),
  ADD KEY `fk_blog_posts_blog_categories1` (`post_category`);

--
-- Index pour la table `sb_users`
--
ALTER TABLE `sb_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `loginpassword` (`user_login`,`user_pass`),
  ADD UNIQUE KEY `email` (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sb_categories`
--
ALTER TABLE `sb_categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sb_comments`
--
ALTER TABLE `sb_comments`
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire', AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `sb_contacts`
--
ALTER TABLE `sb_contacts`
  MODIFY `contact_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `sb_employes`
--
ALTER TABLE `sb_employes`
  MODIFY `employe_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `sb_posts`
--
ALTER TABLE `sb_posts`
  MODIFY `post_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `sb_users`
--
ALTER TABLE `sb_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
