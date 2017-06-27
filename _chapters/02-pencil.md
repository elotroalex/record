---
layout: chapter
title: "how to erase history with a no.2 pencil"
author: alex gil
chapter: 2
---
<br>

> For the little girl, it was just the opposite—she could remember every event of her life with excruciating detail. But it was not only past events that she could remember.

- {:.attribution} *Recurrence Plot (and Other Time Travel Tales)* \| Rasheedah Phillips

<br>

> *En me renversant, on n’a abattu à Saint-Domingue que le tronc de l’arbre de la liberté des noirs ; il repoussera, parce que les racines en sont profondes et nombreuses.*

- {:.attribution} (attributed to the historical Toussaint Louverture).

<br>

## speculative staging

[Big Bang Data](http://www.cccb.org/en/exhibitions/file/big-bang-data/45167) moved from Barcelona to Singapore's ArtScience Museum in 2016. Everything about the exhibit was supposed to make you feel small, and Safdie's brobdingnagean lotus in Marina Bay Sands was just the venue. After the first few hallways insisted on the overwhelming material scope of our online worlds, we arrived at a welcomed bench to relax over a short film on the [Internet Archive](https://archive.org/). A few minutes into the reel, though, Brewster Kahle's dream of "universal access to all knowledge" surfaced again, seaside of ultra-condensed capital, to unsettle any rest—all knowledge, all access, all the time. 

Here I was a few words ago worrying about what pages in an obscure manuscript by Aimé Césaire have a few traces of blue carbon paper residue on them to help me version it, and the Internet Archive wants to version it all. They go about their dreams with a semi-regular periodicity akin to a temperamental farmer's almanac, and they do so with a certain degree of excellence that merits praise and gratitude. They are not alone, of course. Since Google began dreaming in page caches and scanned books, we've only seen the lust for versions grow stronger, even versioning ourselves with FitBits and what nots. 

In culture work, we have recently taken to GitHub and git for sanity checks and as a hedge against collective loss—first as software, next as text, all distributed. Provided that Github, or a forward migration of the git repository survives, anyone interested in reconstructing the stages of my own deviations would have a much easier time than we can ever hope for Césaire or any number of writers. As I write these paragraphs on a plain text editor, every now and then, when I can name the changes I've made, I switch to the command line and `git add`, `commit` and `push` to Github, where the new version becomes accessible to the online reading public, or at least that segment that feels comfortable navigating the platform and has moderate bandwidth. Let me do so now that I've made some revisions I can name, and I quote:

~~~
$ git add .
$ git commit -m "edited paragraphs on version lust"
$ git push origin master
~~~

If you ever want to revisit the work at this stage, you can always visit or revert to commit number <a href="https://github.com/elotroalex/project-x/commit/3c2b9f0b4f8092eb3e3f62ef5fa58ab71206031f" style="overflow-wrap: break-word; word-wrap: break-word;">3c2b9f0b4f8092eb3e3f62ef5fa58ab71206031f</a>.[^b2] The size of that checksum hash—a unique name for a unique state of the text—makes me feel no less insignificant than a big data bang or a lotus flower visible from the sky, and yet I persist in these granular versions with the same dignity as Marquez' *coronel* and his rooster. 

One lie, of course, is that you can see all past versions of this work on Github. Not all changes I make to this text make it to Github. Every time I add or delete characters in my text editor, git recognizes these changes as modifications, but it won't record them to the data store unless I first indicate at what point and which files or changes I want to "stage" and subsequently commit to the repository. The `add` command is there to stage these files or changes in a vestibule, the git "index". In the case above, the dot after the `add` command tells git to stage all modifications in my working directory, but I could've chosen to stage only selected files, or even parts of that file using the `--patch` command. This strange middle ground between a modification and the record of that modification sets apart git from a typescript and other versioning systems, and makes it all the more seductive because it gives an extra layer of control over what versions we make available to the repository.

The git stage—or staging area—marks the opposite pole of our most important performance stages along the lines of a *stare decisis*. While the former marks the timid decision of one writer to present chosen variations to the machine, the latter presents before us a set of certain collective commitments that bless it with Significance. This spectrum is echoed in the roots of the word. By the time the medieval inheritors of Latin go from the vulgar *staticum*, a place to stand, a sojourn, to Middle French *estage*, the stage comes to have both modern meanings relevant to us: a dwelling in a series and a platform for a performance, never shedding the slip between each other—*estar, no ser.* 

The ruin of stages haunts the textual critic, erasures and additions, all crumbling under eternal sunshine; and yet we persist, not because we desire to build a library for Troglodytes in a City of Immortals; nor to preempt all possible meanings—meaning is cheap in New York, and even a crushed Skittle on Broadway can deliver. We persist because we seek the halo of Significance. The textual critic, the curator, and a few other memorists, fated to seize hold of any of these stages and repeat them in moments of historical need, dwells in a spooky continuum, where the past is always a feature of the future. While we may be excused to dedicate countless pages to technical matters, faustidious to a fault, our calling remains to create the conditions for the future staging of a useful past and its audience, and to do so through careful oscillations between past mechanisms and those of our time.[^b4]

A revised typescript, like git, serves as a versioning system, except with a different set of hashes and rhythms of its own, and like any other versioned set, we can find alternative futures and renewed significance within. Jerome McGann's recognition of a "linguistic" and a "bibliographic code" as the condition of all text can help illuminate the way.[^b3] A linguistic code can be understood as the set of allographs in a document (letters, words, accidentals, etc.); a bibliographic code as the set of non-linguistic documentary features (font, layout, paper texture, brightness, etc.). Both are beholden to infrastructures (libraries, sellers, browsers, law, etc.) and specific historical demands (prestige, freedom, epistemology, etc.). Always fused, they guide the way we use texts, and we only come to know the meaning of either through the other, as an autopoetic mystery, with or without a numen. And they both matter—could you, for example, imagine the 20th Century if *The Communist Manifesto* had been originally printed in Comic Sans, or Comic Sans without its absence from 20th Century editions of *The Communist Manifesto*?

The pagination schemes of the Sain-Dié witness allowed us in chapter one to outline a rough, geometric schema for the stages of composition of "...et les chiens se taisaient" ([figure p]({{site.baseurl}}/images/fig-p-full.png)). Guided by the typescript's intimate bibliographic code, catalogued in chapter one in *tables a-d*, we could take a step further and make the geometric abstractions textual by re-staging our material observations as fragmentary editions, somewhere between a quote and the edition of a work, and hopefully fair in their transformative use. Re-made into speculative stages, we will be better able to take into account the shifting terrain of the drama to refine our genetic gambit. We cannot do so without a certain degree of awe, staging the past through texts that never existed until now, bound to the sample reality of Negritude documents that have existed for several decades—a conjectural and forensic praxis, beholden to an ethics of afro-futures.

The bind between speculative computing and precious documents is not free from suspicion, though. I wouldn't stop long to address those who leverage their allegiance to originals and origins as a source of priestly authority, other than to hoist the Jolly Roger. Instead, I would linger with those who, like me, already live in a democracy of one's own. Within a materialist practice that privileges dismantling the black box, like ours, the temptation is strong to see the box itself as a distraction, and therein may lie our trap. 

In "Notes towards a Deformed Humanities,"[^b10] for example, textual alchemist Mark Sample questions the return to the box, or the egg as the case may be, in an attempt to subtract the *performance* from McGann and Samuel's *deformance*[^b9]:

> I don’t want to put Humpy Dumpty <span style="font-style:normal;">[sic]</span> back together.
>
> Let him lie there, a cracked shell oozing yolk. He is broken. And he is beautiful. The smell, the colors, the flow, the texture, the mess. All of it, it is unavailable until we break things. And let’s not soften our critical blow by calling it deformance. Name it what it is, a deformation. <span style="font-style:normal;">(Sample)</span>

Sample's playful effort to give equal, if not an accented significance to a "deformation," without a post-publication return to the source, pushes back—*avant this lettre*—against my attempts to stage speculations and speculate stages. I share much ethos with Mark Sample—an appreciation for hacking and the broken, the hospitality of sharing, the enchantment of oulipean approaches, to raise work over thinking, and the sheer panache—but the temporalities in the above effort give me pause. While I do want the speculative stages of the typescript to stand on their own two feet, I also don't want to foreclose your visit to Saint-Dié des Vosges, nor neglect the comparative key, nor replace the signature of the poet with mine. "The deformed work is the end, not the means to the end," rebuts Sample. He is right, of course, in the way we are right in recommending our *inventio*, or fighting the faux-realism of certain quarters, but our sources bring bills with them—beyond copyright law—for a debt we cannot pay, nor ignore. Though I am convinced of the latent capacity of a remix to achieve escape velocity—a history of cultural appropriation confirms it—I am less convinced we should discourage our worthy returns... at least not here, not now. 

Many of us suspect that Humpty Dumpty has always been broken, or whole for that matter, and the point has always been to repair the wall. In a materialist sense, the past is not mine, or a mine for the extraction of linguistic resources, but the dwelling for our future significance—less Marinetti's *futurism*, and more Reed's *necromancy* in Alondra Nelson's reading of PaPa LaBas' "jes grew",[^b11]

> Rather than a "Western" image of the future that is increasingly detached from the past or, equally problematic, a future-primitive perspective that fantasizes an uncomplicated return to ancient culture, LaBas foresees the distillation of African diasporic experience, rooted in the past but not weighed down by it, contiguous yet continually transformed. (6)

The computational exercises that generated the speculative stages in this chapter align, in that sense, with Kari Kraus's recent efforts to reboot *divinatio* and conjecture theory in the field of textual scholarship. Kraus is always careful to keep past-future together in her work—albeit in ex-votos for different *santos* than mine—and her efforts to reunite a "family of subjunctive practices"[^b5] around speculative design amount to a medicine kit for a bevy of modern ills: scientifism and its obverse, the fear of science; subservient fidelity to scholarly protocols; premature dismissal of algorithms; arrested imaginaries, etc. 

In "Conjectural Criticism: Computing Past and Future Texts,"[^b6] Kraus makes a convincing argument that "conjectural criticism (the reconstruction of literary texts) can be profitably understood as a sub-domain of Ramsay's algorithmic criticism (rule-governed manipulation of literary texts),"(3) opening the door for the following, incisive definition of conjecture in the service of textual criticism:

> Conjecture is *allographic inference to past or future values of the sign*. Allographic is a semiotic term given currency by the analytic philosopher Nelson Goodman in his seminal <span style="font-style:normal;">Languages of Art</span> and refers to those media that resolve into discrete, abstract units of information—into what might be more loosely called digital units—that can be systematically copied, transmitted, added to, subtracted from, transposed, substituted, and otherwise manipulated.<span style="font-style:normal;">(16)</span>

Kraus' definition and her Goodman addendum binds conjecture to the practice of actual repetition, and rightly so—show me the text, or it didn't happen, etc. As a result, Kraus sees these forms of conjecture thriving in allographic environments attached to "mass digitization." Despite this potential, she diagnoses a surprising dearth of conjectural criticism in scholarly quarters. The root cause: the relatively recent "wealth of scholarship promoting the text's bibliographic or iconic codes." "Despite the virtues of such visual approaches to textuality (and there are many)," Kraus generously clarifies, "conjectural criticism has been hamstrung by their success."(16) 

But why exclude the bibliographic code from conjecture, if it too can be abstracted and repeated in practice through allographic processes? I would diagnose our lack of conjecture elsewhere—perhaps a collective clutching of pearls—and recruit bibliography to join the cause and help open "the floodgates" of Eureka moments as both crowbar and eventual doorstop. If we can no longer see that a text is inseparable from a bibliographic code, or that abstraction remains a black-boxing between repetitions, then I suspect allography may sadly become a mask, and autography mere masking tape. Lest we forget, nothing within allography itself actually prevents us from repeating a bibliographic code as forgery or as a derivative—whole or in parts—beyond optical character recognition. 

A simple exercise, the one I explore in this chapter, depends on the fascinating capacity of allographs to be contained by each other (*mask* contained by *ing* and *un* in 'unmasking'), but also by bibliographic codes (*mask* contained by italics). If I asked you to copy all the text written on [page 5]({{site.baseurl}}/data/sdw-data/P005.jpg){: target="_blank"} of the typescript, you would be able to do so without too much trouble. If I then asked you to add a special character at the beginning and end of the sequences written with pencil, you would be done in a second. These simple moves license my own journey from autography to allography and back: to abstract the bibliographical code in the typescript and use it to contain linguistic sequences; to select among the containers using algorithms; and finally, to render the sequences with a sister code.

Unable to escape embodiment, allographs cannot survive a repetition without a bibliographic code, and that code can be (must be if the computer is a machine) determined by allographic processes—conjecture included.[^b7] An autographic textuality that is allowed to, indeed must return unimpeached from allography—mechanical or otherwise—can help us double down on Kraus' salutary *exhortatio*, without sacrificing our commitment to bibliographic past-futures.

The radical alternative, to reduce allographic transactions to a denuded linguistic code, makes me nervous. I hear in that move the unintended echoes of a literary theory inattentive to the means of production of its own knowledge, the premature deaccession of "copies" from libraries, and the legal alibis of "content" cartels incapable of reading. Quite the conundrum, since I can appreciate the joy of those distant readings and oulipean teases that imagine such reductions of the sign—agnoses taken for wonders. I won't be the one to reign or rain on that parade, but perhaps I can offer a dance: a praxis where the butterfly and the pupa are never long apart from each other on the stage. Faced with an archival past choked by colonial epistemologies and cruel capital flows, wouldn't such a ritualistic performance of past-future bibliography, *cum* infrastructure and social critique, prepare us for the repairs we need? *Al freír de los huevos lo verá.*

---

## revolution rising

In our case, we can define a speculative stage as *the repetition of an allographic subset from a historical document, determined by the computation of one or more bibliographic features, for the purpose of understanding its genesis*. This definition is leery of purely random recreations of the text. Even if we spun the pages solely according to the features marked in *tables a-d*, we would have 2354! resulting versions, which makes Google's calculator shrug its shoulders and spit out "infinity." (Hm. I wonder if the Internet Archive would be amenable to... never mind). Notwithstanding serendipity, for the idea of a speculative stage to provide us with a useful past, we must limit our re-creations to plausible or instructive states of the existing document. A speculative stage made up of only handwritten revisions, for example, would be useful as a genetic data mine, and a reconstruction of all the pages encompassed by a particular pagination as an edition.

If we gathered the pages marked with `P1`, and made an edition based on the original type, *sans* revisions, we end up with our first relatively coherent and useful speculative stage. We can call it "[Revolution Rising]({{site.baseurl}}/editions/sdw-revolution/){: target="_blank"}."

We arrive at this speculative stage by a series of repetitions, each with their own erasures and additions. The first reproduction came in 2007, when I hurriedly photographed the witness in Saint-Dié des Vosges with a cheap digital camera. I returned to Saint Dié in 2008 with more leisure to study the materials and scan the pages at 600 dpi resolution.[^b14] Alas, I fumbled that one too: The portable flatbed I carried on my backpack was about the same size as the pages, and I did not bring a color control strip. As a result, we lose a few millimeters around the edges in many of the reproductions, and any certainty about the hues of the original.

In 2009, I began transcribing [the images]({{site.baseurl}}/data/sdw-data/), as time and dissertation allowed, and marking the bibliographic features I found relevant using an early release of the [TEI P5 Guidelines](http://www.tei-c.org/Guidelines/P5/). Took a year or so to reach a satisfactory version. Needless to say, the art of interpreting and codifying bibliographic observations, to reproduce the autograph as a series of selected allographs, is an unapologetic conjectural and lossy enterprise, but not an absolute one. I was able to avoid most semantic markup outside of a typology for didascalia and the insistent epistemology of the TEI standard itself. The final markup accounts for all of the information in *tables a-d*, but goes beyond those catalogues to encode other bibliographic features I thought worthy of notice at the time. Recently I [updated the markup]({{site.baseurl}}/data/sdw-tei/sdw.xml) to reflect my current concerns and to align attributes with the names I use for material traces in chapter one.[^b15]

The next repetition, closer to the one you see here, was mostly determined by a series of algorithmic rules [encoded in XSLT]({{site.baseurl}}/data/sdw-tei/sdw-revolution.xsl) and processed by Saxon. The goal of this step was to select segments of the linguistic code based on specific bibliographic information encoded in the TEI file, and substitute the original TEI/XML markup with the HTML, YAML and Markdown useful to Jekyll, the next processor. In effect, Saxon is using the rules in the XSLT file to know what to repeat and how—a mechanical byte-setter assiduous to follow the strict rules of *recensio*, *examinatio* and *emendatio* that I provided. I should note that, for the sake of convenience, I left myself room to edit special cases directly in the TEI with a combination of `orig`, `sic`, `reg` and `corr` tags, though this approach was not strictly necessary. I could have reduced all emendations to algorithms, some inevitably complex, but I chose to save time instead. The result of the combination of the machine and my direct interventions is the file `sdw-revolution.md` in the `_editions` folder [on Github](https://github.com/elotroalex/project-x/blob/master/_editions/sdw-revolution.md). Though the file on the repository is public, the text is not yet particularly readable, at least not with the Sunday dress we expect from a careful edition.

The final repetition is produced by Jekyll, a static site generator, which converts the Markdown files into the HTML files your browser is rendering right now. In order to give the text its current look and feel on your screen, the browser interpreted the CSS style rules I laid out for (a slightly modified version of) [Ed](http://elotroalex.github.io/ed/). 

Emendations were added to the TEI file to make sure the edited stages had no manual interventions post-transformation. My choices include limited normalization and a reduced representation of erasures. For the former, I instructed the machine to ignore sequences marked as `sic` or `orig` in the original TEI, and privilege my corrections and normalizations, also documented in the TEI file. Accidentals were regularized, for the most part, to conform to modern French usage, except in a few cases, when the punctuation jumps out of the page with meaning. 

In each of the five processors just outlined—scanner, me, Saxon-EE, Jekyll and your browser—the aegis of bibliography structured and determined the following stage. And in the last three, an inexorable teleology drove the text towards the iridescent autography of our first speculative stage: "[Revolution Rising]({{site.baseurl}}/editions/sdw-revolution/)."

...

"Revolution Rising" contains the largest number of historical references of the drama: names, locales and events which correspond more or less to the early period of the Haitian Revolution. The curtain opens on a plantation in Saint-Domingue. A few white girls play outside. The Chorus, a Reciter, and a Recitress (CRR) enter the stage to warn the girls of impending dangers: “*Rentrez chez-vous jeunes filles, il n’est plus temps de jouer, les orbites de la mort poussent des yeux fulgurants à travers le mica blême.*”[^21] The girls respond to the omen in plain French: “*C’est une devinette?*”[^22] After two further, brief exchanges, the girls begin to mock the odd strangers: “*Hou ; hou*.”[^23] The mother appears at the door and, sensing the true danger of the situation, asks the girls to come inside. Thus begins the earliest form of the drama.

In the next scene, the Chorus, the Reciter, and the Recitress bury an imaginary corpse while reciting the words “*Adieu, Saint-Domingue*.” The mock burial sets the stage for the carnage that characterizes the drama. Combined with the preceding episode, these initial gestures set the Haitian Revolution as the main subject of the story. This frame is completely different from the one we get in all future versions. For example, as early as `P2`[^24] the frame changes to focus on the death of Toussaint (Le Rebelle in the published versions). In other words, though Toussaint was an important character from the start, the earliest conception of the work suggests a drama centered on the historical event proper.

"Revolution Rising" also contains the largest number of props to the theater. After the reciters bury the mock body of Saint Domingue, we have the following stage direction:

> *(A ce moment l’obscurité envahit la scène; des coups de feu; des cris discordants; puis le tapage s’apaise peu à peu; quand la lumière revient, le décor a changé: le camp des nègres au milieu d’une forêt. Chefs nègres et députés blancs en conférence).*[^25] (24)

The directions are specific to a staged spectacle. Each of the lines refers to sound, lighting, or decor, with only one adjective thrown in the mix, “*discordants*.” Compare the sentence, for example, to a parallel passage towards the beginning of the first published version:

> *(Dans la barathre des épouvantements, vaste prison collective,  peuplée de nègres candidats à la folie et à la mort; jour trentième de la famine, de la torture et du délire).*[^26] (98)

The latter, by contrast, do not contain a single element that would facilitate staging in an actual theater, then or now, despite the dark appeal of the scene to the reader’s imagination. Even the line "*prison collective*" troubles the stage with the adjective "*vaste*." Although I am not interested at the moment in arguing that the typescript as a whole is suitable for the stage, something I believe can only be tested on an actual stage, it seems clear to me that "Revolution Rising" gravitates towards a theatrical representation. Other stage directions in our speculative stage support that conclusion, with a limited amount of (debatable) extra-theatrical elements found on the directions on `P1.15` (35) and the last page, `P1.20` (40).[^27]

"Revolution Rising" uses two kinds of narrative modes: either the story develops through the action and dialog of the characters on stage, or it is narrated by the Chorus, Reciter and Recitress trio (CRR). We will shortly come back to the diegetic narrative, one of the keys to unraveling the transition from history to myth in the text. In the mimetic narrative, we count three large episodes. As the white delegates begin to lay their diplomatic traps, Toussaint invites them to address the black troupes directly. The crowds seem to waiver after the seductive pleas of the delegates to disarm them, but Toussaint sways them by signaling their devious intentions. Once persuaded of the righteousness of their cause, the crowds unleash their machetes and the refrain which will echo throughout the rest of the drama: “*Mort aux blancs*!”, death to the whites, or death to the white foreigners as a Haitian translation would have it.[^28] The delegates are massacred, and the rebels descend on the rest of the white population with their sharp response.

After a brief CRR recitation, rife with ghoulish visions of the revolutionary bloodbath—echoes of a world at war—the scene moves to an assembly of planters at Cap \[Français\] presided over by the governor. In their arrogance, the white planters continue to underestimate the situation. Blanchelande,[^29] the governor, fails to bring them to their senses. On the streets, passersby echo the haughtiness of the assembly. Soon after, the tumult of the revolution bursts onto the scene. The episode continues with a mock-assembly of black rebels, or as the text has it “*une séance sinistre et bouffonne pleine d’emphase et de cruauté.*”[^30] The episode ends as another group of rebels follows a standard bearer into the assembly waving the head of the governor on a pike.

After another CRR recitation, the final, and rather brief staged narrative loops us back to the beginning of "Revolution Rising," with the white mother and her girls now running for cover and bemoaning their fear and fatigue. The scene quickly gives way to a field of enslaved workers who ‘sing their fatigue’ in call and response for two pages. The speculative stage ends with the first invocation of "Haïti. Haïti."—closing the mirror loop to the opening burial of Saint-Domingue—and what seems to be, at least on the surface, the most extra-theatrical stage direction of "Revolution Rising": a ship in distress invades the field of vision, and in the phosphorescent sea an inscription explodes. In a later addition, absent from "Revolution Rising," we learn that the inscription read: *République d’Haiti.* 

I summarize these three episodes not only to help the reader enter this difficult text through the most accessible door, but to emphasize a few important observations about its genesis. The first observation is that Toussaint is not the original central figure, but rather one character amongst many in a dramatization of events of the Haitian Revolution. The second is that these episodes are meant to suggest the first stages of the revolution: a committee negotiating for leaders to be set free at the expense of the rank and file, the assembly at Cap Français unaware of the gravity of the situation, the bloody scenes of rebellion when chattel slavery still reigned supreme in Saint-Domingue—In brief, the most basic retelling of the early stages of the revolution.

Other details which barely catch our attention confirm the stage. During the assembly of planters, the governor warns that “*Toussaint et Boukmann ont constitués une armée*.”[^31] This places us around the year 1791.[^32] On `P1.2` [(24)](/data/sdw-data/P024.jpg), we notice that the lines delivered by the second French delegate have been marked for deletion with red ink. In these lines, the delegate proposes freedom for the rebel leaders. At this point in the original, two missing pages follow, pages `P1.3` and `P1.4`. As the action returns on `P1.5` (25), Toussaint asks Dessalines[^33] to stand back (also erased with red ink later on). This suggests that the two missing pages carried details of the negotiations between the white delegates and other leaders besides Toussaint, Dessalines being the one who survives by name. The historical Jean Jacques Dessalines was involved in the revolution from the start, though not immediately as a leader, and his appearance here is consistent with the record of the early revolution. Leaving aside for now the minor historical incongruities which students of the revolution will immediately recognize in the text, these effaced figures further testify to Toussaint’s marginal role in this speculative stage.

Towards the end of "Revolution Rising", during the last recitation, the Reciter announces that Sonthonax has opened the prisons, armed the slaves, and opened the doors to several important cities. This refers no doubt to the most notable deed of the Civil Commissioner, Léger-Félicité Sonthonax, to declare an end to slavery in Saint Domingue. This places the end of the segment around October 1793. In retrospect, "Revolution Rising" forms a non-Aristotelian[^34] dramatic unit which can be said to follow a chronological order in harmony with the historical record.

Nothing within "Revolution Rising," outside of Césaire's poetics, would place the action outside the span 1791-1793, technology included, except for two oddities which deserve our notice since they reinforce the notion that at this stage the work is oriented towards the theater: the first is the song “À la Martinique,” hummed by one of the voices on the street outside the assembly of planters on page `P1.13` (33) of the original[^35]:

> *A la Matinique, Matinique, Matinique \\
> c’est çà qui chic...*

This character is paying homage to the famous *café-concert* singer Felix Mayol, who popularized the song in France at the beginning of the twentieth century. The complete lyrics tell the story of a black man from Martinique who falls in love with a white flower shop attendant and becomes a boxer to satisfy her demands for jewelry and pretty dresses. The song was originally composed in English by George M. Cohan, the “Yankee Doodle Dandy,” for an American minstrel show.[^36] Not surprisingly, the lyrics present several racist (and sexist) stereotypes of the time. What is more important to us is that Césaire makes a direct reference to Music-Hall, and an indirect reference to minstrelsy. How familiar this song was to Martinique audiences is difficult to ascertain, especially when we consider the song was already thirty years old by the time our text was produced. This is, nevertheless, a familiar theatrical gesture. Paired together with the slave song towards the end, the performance echoes and demands a stage.

The second theatrical detail that deserves attention, not necessarily because it is strictly speaking an anachronism, but because it helps us understand the shifting, central role of the chorus in the genesis, is the odd stage direction on `P1.19`. The Recitress narrates: 300,000 rebels attack the city, white crowds jam the main gates, trying to reach the ships in the harbor. A stage direction interrupts the narration: “*A mesure qu’elle parle, tout cela se dessine sur l’écran*.”[^37] This stage direction will later be erased by pencil. While it lingered there, however, it opened up the text to an intermediation that hardly belongs in a closet drama.

The use of the screen to project static and moving images on the theater stage can be traced back to the ‘cinemagician’ Georges Méliès[^38] at the beginning of the century, but it is Erwin Piscator who will make it a prominent theatrical practice in 1920s Weimar Germany. Although several critics have pointed out the Brechtian inflections in Césaire’s theater,[^39] very little attention has been given to Brecht’s mentor and friend Piscator, who developed a different conception of ‘Epic Theater’ from Brecht, one that depended on stage machinery, film projectors, large crowds on stage (*Sprechchöre*), and a political style marked by didacticism and documentary modes.

In the absence of documentary evidence, I find it difficult to ascertain whether Césaire knew the work of Piscator (or Brecht) during his years in Paris. Piscator remained in Paris to avoid Stalin’s Great Purge for the two years that Césaire was a student at the École Normale Superieure, but (to my knowledge) he does not seem to have staged or published while Césaire was there. Much more likely, Piscator’s innovations came to Césaire’s attention via Paul Claudel’s *Le Livre de Christophe Colomb*. Although the latter drama was not staged until 1953, the book was published by Gallimard during Césaire’s years in Paris, with two runs in 1933 (one with illustrations by Jean Charlot, the other *sans*) and a reprint in 1935.[^41] Claudel was so taken with Piscator’s experiments that he had asked him to collaborate on *Le Livre de Christophe Colomb*. That collaboration never took place, but the response of the one to the other remains evident.[^42] 

In a recent article, Pierre Laforgue connects *Tête d’or*, *Le Soulier de satin*, and to a lesser extent *Le Livre de Christophe Colomb* with *Et les chiens se taisaient*. His reading connects Colomb and Le Rebelle through analogy: "*Il faut reconnaître que l’ambition du Rebelle et celle de Christophe Colomb présentent un certain nombre d’analogies.*"[^40] This reading, echoed in the title of the essay, "Césaire et Claudel: une cantate à deux voix." misses the essential antagonism between the two, evident in the typescript, but not exactly hidden in the published versions. 

Césaire’s reconstruction of Claudel’s own “*théâtre total*” seems over-determined: an evident overlap between the *dramatis personae*, early traces of similar techniques, and more importantly, perhaps, a dialectical negation of Columbus in *Chiens,* who will become the explicit nemesis of `P2`.[^43] The tension between these two texts deserves a longer treatment than I can provide here. For now, what should draw our attention is the use of the screen in Claudel’s drama. The screen is present from the beginning of his play “*au fond de la scène*,” [^44] arguably serving a dramatic, didactic, and choral role, in Brecht’s acceptation. Although Claudel invokes the screen more often than Césaire’s lone example, their functions overlap. 

Consider the directions from Part I, scene X of *Le Livre*: “*Tout cela apparaît mélangé sur l’écran*” (46).[^45] Both Césaire and Claudel—using almost the same formula—project on a screen whose function is both mimetic and diegetic, and whose main trope is the χορός, here understood not as a separate role within the drama, but the corralling of all roles singing in unison. In other words, for Césaire and Claudel, the chorus sings *in chorus* with the screen. The difference, is that Césaire recuperates the screen away from Claudel, re-writing the ideology behind Luke 14:25-27 by two mechanisms: repopulating the screen with the revolution, and reversing the fugitive birth of the nation from colonizer to colonized:

From Claudel…

> CHRISTOPHE COLOMB II, de même: Quitte ta mère! Abandonne-la! Quitte ta famille! Quitte, quitte ta mère! La Volonté de Dieu est ta patrie! Tout cela qui t'empêche de partir, tout cela est ton ennemi.

> CHRISTOPHE COLOMB I: Quitterai-je mon père et ma mère? Quitterai-je ma patrie? Tout cela apparaît mélangé sur l'écran.[^b22]

…to Césaire:

> La récitante (dolente): 300.000 hommes, tribart brisé, se précipitent dans la ville et poussent des hurlements clabauds... Le port est couvert de blancs qui cherchent à gagner les bâtiments en râde... Ah, les chaloupes chavirent... (A mesure qu’elle parle, tout cela se dessine sur l’écran.)[^b23]

By a circuitous route, this brings us back to the `blue ink` addition to `P1`, where the words “*Republique d’Haïti*” become projected on the phosphorescent sea. Presumably written during the temporal shift that would accommodate `P2`, and before the pencil corrections that will excise a large portion of the work’s theatricality, this stage direction elicits the phantasmagoric return of the earlier screen. The Piscatorean projection of letters on an unmountable stage wall—the shallows of a phosphorescent sea—becomes a site of mediation, where stagecraft starts to capitulate to the poetic stage—words projected on words.

As I pointed out above, the Chorus and the Reciters intrude between the dramatic episodes, establishing a rhythm of sorts between them and the action. As "Revolution Rising" begins, they engage with the girls on the stage, but besides this brief narratorial metalepsis, they refrain from engaging the actors. Their words, nevertheless, follow steadily the historical chronology dramatized on stage—an Aristotelian conundrum: not quite the hands-on chorus in Sophocles, nor the distracted one in Euripides.[^59] For the most part, these intrusions from CRR consist of narrative or poetic commentary. Though they speak in a highly elliptical poetic idiom, CRR is often describing and referring to events which are either already depicted on stage, or are assumed to be happening, recounting difficult-to-stage battle scenes—as the rebels descending on Cap-Haïtien above. In other cases they augur events about to take place, in a form of micro-prophecy, without straying from the time-line.

Once the episode with the delegates begins, after the two missing pages, and after Toussaint invites the delegates to address the crowds, for example, the Reciters barge on the scene to foreshadow the trickery of the delegates, "*apostrophes tentaculaires*," "*les ruses savantes*," "*la vache des naufrageurs*," etc.[^58] and the response of the crowds in the bloodbath to come:

> *Déja le silence empoisonne chaque fibre\\
> Des gestes hiéroglyphes avalés à moitié signalent\\
> Les jachères et les semis de cadavres* (25).[^46]

After the crowds have raised their war cry and the episode with the delegates ends, the Reciter takes over the narration of the event:

> Le récitant: Un coup de sifflet... Les nègres sortent des broussailles avec une grande clameur. Les coutelas s’abattent et se relèvent et s’abat­tent dans le moulinet de l’exaspération (29).[^47]

The first example, which we could call proleptic, and the second, which we could call diegetic, both conform to the action on the stage, to an unfolding plot for which they are a doubling of sorts (in the same way that the ‘screen’ was a doubling of the Chorus). In this sense and at this point, the role of the combined CRR does not depart substantially from the *χορός* in classical Greek theater. The individuated role of the Reciter and the Recitress, on the other hand, cannot be easily reduced to the role of a dual *κορυφαῖος*, nor as a black avant-garde reformulation of the strophe and antistrophe. They function instead in the "jes grew" of afro-diasporic call-and-response formations, which are directly cited in the work songs towards the end of the speculative stage: "*Hé, mes amis, ho... La terre est une fatigue ; ma fatigue va la fatiguer,*" etc. 

The combination of the two modalities, European and African, should not surprise students of Césaire. Here he is again in "The Liberating Power of Words":

> And so I have tried to reconcile those two worlds, because that was what had to be done. On the other hand, I feel just as relaxed about claiming kinship with the African griot and the African epic as about claiming kinship with Rimbaud and Lautreamont—and through them with Sophocles and Aeschylus! (Melsan) 

While the hard-to-miss general reference to *Prometheus Bound* has been widely cited, even by Césaire himself,[^b12] our chorus goes beyond the role of the Chorus of Oceanids—at least at this stage of the composition, before the promethean model subsumes the drama. As in Sophocles’ Theban plays instead, the CRR trio in "Revolution Rising" narrates and (micro-)prophesies the birth of the nation, with the Reciter and the Recitress calling and responding to each other beyond any classic Greek tragedy. This structural split is refracted in almost every other role of "Revolution Rising," except Toussaint's: At one point the Chorus itself splits into two demi-choruses that call and respond to each other; and the crowds themselves respond to Toussaint's address in similar ways, producing in effect a hall of mirrors between the choral function and the function of call and response, where the enslaved field song just grew to the size of CRR, and in their poetry to the size of the revolution.

These functions and structures of CRR will soon lose ground when CRR's dialogical and prophetic relationship vis-a-vis Toussaint intensifies, and more so in the published versions of the text, when all references to historical events are eventually elided and the plot is reduced to the point of stasis. At this stage though, the principal theme of CRR remains the revolution itself, and most of its diegetic recitations sing and refract the epic events that cannot be represented on a real stage, at least not one without vast resources—words as stage props. 

<br>

---

## Toussaint King


<br>

> Toussaint did not make the revolt. It was the revolt that made Toussaint.

- {:.attribution} Scene 2, *Toussaint Louverture* by C.L.R. James (1936).

<br>

We can call "[Toussaint King]({{site.baseurl}}/editions/sdw-king/)" a pseudo-diplomatic edition of `P1` and `P2`, in that order and without additions; and "[The Scaffold]({{site.baseurl}}/editions/sdw-prince/)" a pseudo-diplomatic of those pages organized around and up to `S3` (including `P1`, `P2`, `P3`, and `P6.1`) and including the extra-typographical additions, roughly coinciding with `S4-S5`. To construct "the scaffold" we will also assume that those pages marked `P2` already precede the pages marked with `P1`.

The pseudo-diplomatic approach will allow us to study more closely the transposition in time and order within the drama, and the allographic transformation of bibliographic codes. The *pseudo* comes from the split in representation between additions and deletions: "Toussaint King" represents future deletions in <span class="delete">crossed-out red</span>, and "The Scaffold" past additions in <span class="add">green</span>. In a very real sense, a pseudo-diplomatic lays bare what a clean reading text hides: multiple temporalities, multiple stages, revealed in the act of opening up new ones. Meant for editors, a pseudo-diplomatic turns the reader into one. The pseudo also indicates that this is not a traditional diplomatic; that I have resorted to emendations to make each speculative stage easier to read.

As with the first speculative stage, "Toussaint King" and "The Scaffold" were solely generated through transformation algorithms. The result of all transformation rules, general or specific, should be a reading text that highlights certain significant features relevant to our genetic tale, while leaving more detailed readings for the corresponding image files. Individual pages are separated by a horizontal line. At the top of each page, the page number leads to the facsimile for each page. Hanging indentation indicates the line continues from above, specially useful for mobile phones.

Together with the markup choices in the TEI file, the set of rules encoded in the XSLT stylesheets [for "Toussaint King"]({{site.baseurl}}/data/sdw-tei/sdw-king.xsl) and [for "The Scaffold"]({{site.baseurl}}/data/sdw-tei/sdw-scaffold.xsl) represent a most precise documentation of editorial practice, since the glitchless machine will never deviate from the instructions. The justification for the choices, though, must belong to the realm of prose.

...

Without revisions, the new action of "Toussaint King" begins soon after the words "Haïti, Haïti" break the "Caribbean silence" towards the end of "Revolution Rising." The historical frame now speeds up to the middle and late period of the Haitian Revolution, with references to the evacuation of the British ("*Hurrah. Les Anglais sont perdus*"), Toussaint’s takeover of the Spanish part of the island ("*Toussaint fait son entrée solennelle à Santo Domingo*"), and an ambigous enactment of Toussaint’s capture ("*Toussaint parait enchainé, entre deux gardes en haut de la citadelle*"). In "The Scaffold," with a few masterful strokes, Césaire will bring the action farther back than "Revolution rising," to the early period of the French Revolution, erasing overt references to the middle to late period of the Haitian Revolution, and casting the surviving ones as prophecy. One thing remains the same despite this temporal shift: both "Toussaint King" and "The Scaffold" crown Toussaint Louverture as the central subject of the drama.

We do not know exactly what the first two pages of `P2` consisted of, but in "Toussaint King," when the action resumes on `P2.3` (2), the Reciter and Toussaint have the stage. The intimate dialog between Toussaint and CRR marks the first Promethean sign in the genesis. The Reciter begins with a trope, prevalent throughout the drama, that we could call for now—pace T.S. Eliot—*the revolutionary correlative*: a poetic vision of violent and revolutionary phenomena, drawing its vehicles from nature. It is safe to say that these tropes characterize a large part of the poetry of CRR and Toussaint. Here is the example that opens `P2`:

> En marge des marées sautillantes, je marche sur l’eau des printemps tournants ; j’aperçois très haut mes yeux de sentinelle. L’insomnie à toute épreuve grandit comme une désobéissance le long des tempes libres de la femme à l’emphore, verseau, verseau tempête de germes, bouilloire.[^53]\(2)

Toussaint Louverture trails these lines, making himself a vessel for the natural world, his thoughts like "lianas without contracture." The mode already prefigures what H.L.F. Kitto describes in his classic study of Greek Tragedy as the core of *Prometheus Bound*, the one we know to be the core of the published drama: "What Prometheus has done for Zeus, what he has done for Man, are not only things which have led to the present situation; they *are* the present situation, part of Prometheus' present mind—for the drama is precisely his present mind."[^60] The subtle poetic mechanism that passes from revolutionary action to the ecological prism of the chorus and unto the drama of Toussaint's psyche, signals the genetic passage between the revolution to Toussaint, as he begins to embody the former in his poetry, moved by the rather fatal "*titanische Drang, gleichsam der Atlas aller Einzelnen zu werden*,"[^61] the Titanic impulse to become an Atlas for all. 

In a similar vein, the temptations of the revolutionary crowd we saw in "Revolution Rising" will become the temptations of Toussaint. On the next page, the scene is grounded roughly in the moment when the city of Saint-Marc surrenders, and the Reciter announces the imminent arrival of the messenger of the king,[^54] undulating, full of promises. Instead of the messenger, but certainly prefiguring him, Toussaint encounters two “*voix tentatrices*”[^55] who offer him riches and titles, in a scene reminiscent of the temptation of Christ, and equally to the point, the temptations of Job:

> Ha, ha, ha. Des mots, rien que des mots&nbsp;: pas trois&nbsp;; mille mots Toussaint… O mon ami, naïf ami, veux-tu de l’argent ? des titres&nbsp;? de la terre&nbsp;? Veux-tu être maréchal de camp&nbsp;? Grand d’Espagne comme Biasson&nbsp;? Roi… c’est ça… tu seras Roi… je jure que tu seras Roi.[^b19]

We could say much about this particular episode in `P2` where the would-be devils comment on the seductiveness of (their own) language: "*ma voix froisse des mots de soie*," etc.[^b20] In terms of the genesis of the text, this scene re-frames the encounter with the delegates in "Revolution rising," as a scene of seduction, set after or as Toussaint considers allegiance to the French Republic, while his former co-conspirator, Biassou, remains on the Spanish side—at least until he's erased with a No. 2 pencil. The seduction, in turn, sets up the colonizer's ornamental words against the brutal poetry of Toussaint—and as a result, the drama as a battle for the power of words to convince and illuminate.

The theme of temptation and the resistance of words will become the dominant structuring feature of all published versions of the text, with other lures confronting the Rebel. Already in the typescript we have a preponderance of such encounters, with a twist: several of the encounters involve the vulnerable sway of the crowds. "Toussaint King" has four of these scenes of temptation: the attempts of the delegates to bribe the generals first, and sway the crowds second, both scenes from "Revolution Rising"; the voices tempting Toussaint towards the middle; and finally, the attempt of a cowardly orator to incite the hesitant crowds against Toussaint. 

Following the temptation of Toussaint by the third rate demons, Toussaint and CRR will resume their intimate, difficult poetic dialog over freedom, truth, revolution, and countless other veins and visions. The result is the further recasting of the hero as a synecdoche for the revolution, and towards what John Walsh calls in *Free and French in the Caribbean*, "the solitude of power."[^b24] CRR declares Toussaint king, and in the same breath, predicts his death. Toussaint accepts his fate and vows to die “naked,” but not without a pinch of self-doubt: "*tu mens, j’ai peur, je suis seul/mes forêts sont sans oreille*,"(16)[^b21] he meditates on the reverberations of radical action... and speech. 

After finally calling out his enemy by name, "Colomb, Colomb," Toussaint confronts the crowds one last time. They arrive on the stage ready to burn him. Rabble-rousers attempt to convince the crowds that Toussaint is putting their lives in danger, tempting them with the comforts of the status quo. Toussaint is nevertheless able to sway them to the fight at hand by harshly scolding them for their cowardice. The steadfastness of Toussaint in the face of temptation contrasts with the crowd’s vulnerability, for whom Toussaint plays the role of firebrand and model of resolve. At the end of the episode the revolution continues, or is about to begin, or has just begun, but it is no longer the central focus of the play. The internal struggle of Toussaint, the Promethean hero, has replaced the hesitations of the crowds, and with this twist, historicity begins to erode in earnest.

---

## The Scaffold

In "The Scaffold," all that was a continuation of "Revolution rising" becomes its prophecy and prelude, including the temptations of the crowd. Several of the episodes decidedly change their thrust with precise flicks of the pen and pencil. Here's a typical example from `P2.11` placing the action on January, 1801 within the frame of reference of "Toussaint King":

> *Le chœur: Mon œil se dore de visions souveraines..... Toussaint fait son entrée solennelle à Santo Domingo.....Le cavido <span style="font-style:normal">[sic]</span> lui remet les clefs de la ville*.[^49] (11)

Even though these lines are cast as a sovereign vision, in the sequence of "Toussaint King," the action remains solidly within a coherent chronology vis-a-vis `P1`, and can be interpreted as the *pragmatographia* found in "Revolution rising": the vision of the chorus is not yet prophetic, but rather the vortex of the Piscatorean chorus. And despite the intimacy of Toussaint's secluded communion with CRR, the internal drama of Toussaint could still be mapped onto an accelerated chronology of the events of the revolution as its "present." 

With the change in sequence and tense, the rhetorical and poetic function of the choir's visual space metamorphoses, and with it the thrust of Toussaint's poetry. Once you remove the mimetic action on the stage, or its memory, a non-diegetic *ecphrasis* takes hold of these visions; once the scene shifts in "The Scaffold," they become clearly proleptic; soon enough, when the geographical and historical references disappear completely in the published version, this and similar ostensive lines will be removed completely or edited to refer to a vague archetypal anti-colonial history of the African diaspora. 

This temporal shift most likely takes place around the time of `S3` or briefly after. On the first page of `P6`, the type sets the scene geographically, “*La scène est à Saint Domingue*.” Césaire subsequently adds “*à l’epoque de la Révolution française*”[^50] in blue ink next to it. In order to confirm and highlight the new temporal reorientation, Césaire will make use of his No. 2 pencil. The first such revision comes on `P2.3` (2),

> Le Chœur: Hurrah. Les Anglais sont perdus... Nos batteries d’approche balayent leurs remparts; nos batteries de brèche sont intallées... Saint-Marc craque... comme un vaisseau pourri...[^51]

Other revisions will follow: Biassou ("Biasson" in the text) disappears from the temptations of Toussaint to avoid an anachronism, and the rebellious "*populace nègre*," the black crowds, towards the end of the last episode revert to "*les esclaves nègres*," the black slaves, at the time of the French Revolution. 

The rest of the pencil revisions will continue in the same spirit, eventually giving way to blue ink. On `P2.22` (15), at the end of `P2`, the last line changes two times with both writing instruments: “*... La Grande Révolution de Saint Domingue<span class="delete"> continue</span><span class="delete"><span class="add below"> a commencé</span></span><span class="add"> vient de commencer</span>.*" (22)—once the revolution continued, later it had begun, and finally it had *just* begun.

To accommodate this temporal recasting, the grammatical tense goes from *passé composé* to *futur simple* in other relevant passages as well:

> - {:.indent-2} <span class="delete">J’avais amené </span><span class="delete"><span class="add">J'aurai </span></span><span class="add above">j’amenerai</span>&nbsp;*ce pays à la connaissance*
> - de lui-même,
> - <span class="add">je&nbsp;</span>familiaris<span class="delete">é</span><span class="add">erai</span>&nbsp;cette terre avec ses démons secrets
> - <span class="delete">allumé </span><span class="add above">j’allumerai </span>aux cratères d’hélodermes et de cymbales
> - les symphonies d’un enfer inconnu, splendide
> - parasité de nostalgies hautaines.<span class="add">..</span>[^52] <span style="font-style:normal;">(14)</span>
{:.poetry}

The tense is adapting to the temporal model established by "Revolution Rising." In the first version of `P2`, the action follows `P1`, therefore the past tense is appropriate. As the time-frame moves to the French Revolution, the tense appropriately changes to the future. The time travel has one strange consequence: the narrations of CRR become *proleptic*, as we saw above, or as I have no reservations calling them, *prophetic*.

Each of the episodes summarized above for "Toussaint King" also change with the temporal shift of "The Scaffold": The voices of temptation become detached from historical bribery, the Death of Toussaint a poetic device, and the final scene before the crowds an archetypal reduction of the rebel leader's synecdotal relationship to the revolution. With this frame, the bulk of "Revolution Rising" and what follows becomes an unfolding, the mere playing out of the hero's tragic destiny. Without resistance or distrust of the warnings of the Chorus, as in the Greek plays, the hero will follow through with his destiny as a tragic sacrifice, the dramatic tension coming from his resistance to the temptations that would stray him from it. At least in this sense, this suggests the Toussaint Louverture in John Walsh's reading of Césaire's sole historical monograph, *Toussaint-Louverture*:

> Césaire’s depiction is similar to the heroic account found in [CLR] James, with an important difference that had implications for his view of departmentalization: where James moved from the story of overcoming to one of a tragic flaw, Césaire portrayed a heroic sacrifice for the future of Haiti. (106)

The new Chorus, now relieved of pragmatographic duties, gains a new gaze, and gaze itself undergoes a metamorphosis. The lines "*j’aperçois très haut mes yeux de sentinelle*" that opened the new sections of "Toussaint King", now do not see over an ongoing revolution, but a future one. Toussaint's exchanges become an oracular consultation as a result. "*Patience, je regarde,*" patience, I'm looking, says the Recitress, as Toussaint waits for more visions. "*Tu vois encore ?*" do you still see? asks Toussaint, impatient; not, do you see already? While we may be tempted to read into these passages the closed eyes of surrealism, cast inward, the constant pull of the actual revolutionary action awaiting fulfillment resist that interpretation.

Instead, we can read in these difficult passages a co-birth. If we are to trust Césaire's commitments in “Poésie et connaissance,” especially the ones in the original version published in *Cahiers d’Haïti* in 1944,[^62] we must attune our reading to a world born contemporaneous with the birthing self: “*Aux temps ou la connaissance était co-naissance, au sens claudelien du mot*.”[^63] That Claudelian sense is, of course, the sense of Claudel's “Traité de la connaissance au monde et de soi-mème”: Knowledge that is born from self and world, but also literally self and world born together—without Bossuet’s god.[^64]

That co-birth, in turn, must always "see" in all directions, both inwards and outwards, but through the eyes of the world as well, opening Césaire to fruitful readings in the anthropocene beyond a post-human or triple O key. Everything seems to have eyes in "...Et les chiens se taisaient," and already in "The Scaffold": the orbits of Death, the ground, Toussaint's cheeks, fantastic beasts, even eyes have eyes; eyes that see blindness, blindness that sees; lighthouses out of joint and collapsing. If all goes well, the violence of recognition, of cognizance, should give birth in the reader to the gathering of that which has been kept separate: the logos and the medium.

The trajectory from one gaze to another in manifold directions at once depend for their effect on a certain kind of isomorphism, a Césairean obsession with shape that points us back to a material or mediated world. The addition of `P6.1` at this stage provides a good example of this technique:

> Ce pays mord : <span style="font-style:normal;">bouche ouverte</span> d’une gorge de feu, convergence de <span style="font-style:normal;">crocs</span> de feu sur <span style="font-style:normal;">la croupe</span> de l’Amérique mauvaise.[^66]

My highlights mark the convergence between the poetry and a modern, Cartesian map of the Caribbean or the Atlantic world. The open mouth is the shape of Haiti, peninsulas for lips; connected to the archipelago of the minor Caribbean, the mouth becomes one of the hooks attached to the rump of South America. The technique, specifically applied to maps, is not new, and already in the 1939 *Volontés* version of the *Cahier d'un retour au pays natal*, we see a few variations:

> Ce qui est à moi, ces quelques milliers de mortiférés qui tournent en rond dans <span style="font-style:normal;">la calebasse d'une île</span> et ce qui est à moi aussi <span style="font-style:normal;">l'archipel arqué</span> comme le désir inquiet de se nier, [...] et <span style="font-style:normal;">ses flancs</span> qui sécrètent pour l'Europe la bonne liqueur d'un Gulf Stream, et l'un des deux versants d'incandescence entre quoi <span style="font-style:normal;">l'Equateur funambule</span> vers l'Afrique.[^67]

Martinique is indeed shaped like a gourd; the archipelago is, well, arched, and the equator does hang like a tight rope between Africa and South America. The technique is not limited to maps, of course, and functions as the main engine for the "revolutionary correlative" above. Beyond a purely formal exercise, though, Césaire expects a transformation in the reader exposed to such gaze-travel, shape-travel, time-travel—wrongs can be made right, but not before we can undo the alienating order of things... at least right here, right now.

So strong is Césaire's belief at this point in the miraculous power of words, that Toussaint is only able to get the attention of the lost crowds with brutal poetry:

> - Vive la vengeance. Vive la liberté.
> 
> - Les montagnes trembleront comme une dent prise au davier, les étoiles écraseront contre terre leur front de femme enceinte…[^65]
{:.poetry}

A close reading of Césaire's poetry requires the most alarming trigger warning of all: absolute violence: mountains trembling with pain, and harder to ignore, the horror of a pregnant woman crashing on the ground with the force of falling stars. Is it a star-storm blasting light become placental blood on the crowds? a scene from a war of extermination? from the plantation? I'd say all the above. In these lines, as others, the shock strategy of *Les Chants de Maldoror* is taken outside the confines of *fin-de-siècle* decline fiction and rudely grafted unto the surreal, hyper-real world of white supremacy and revolutionary violence. And in their place in the dramatic sequence, they work as rhetoric: "Listen to him, listen to him," the crowds respond. 

The visionary exchange between the Chorus and Toussaint in these difficult passages becomes the first scaffold for the play, albeit in prophetic mode. The second is the unfolding of "The Scaffold" itself, fillin in the lines drawn by the prophecy. The same as "Revolution Rising" and "Toussaint King," "The Scaffold" adheres to chronology, starting with the early days of the French Revolution and reaching the last stretch of the Haitian Revolution. "The Scaffold" is also a coherent, albeit shorter, drama, divided into three uneven acts, a large first, followed by two small ones. This contrasts with the three acts of the final version of the typescript, averaging 35 pages an act. 

"The Scaffold" also introduces the fatal prison in the Jura mountains that will eventually subsume the action of all published versions, binding the Rebel from beginning to end. As *figure p* shows, Act 3 is about half of what it would be when we reach stage `S5`, when the last two acts receive several more pages each. The structure of the final act echoes the overall structure of "The Scaffold," as a fractal, again emphasizing the mirror-hall structures that drove the writing of "Revolution Rising," and consistently, future versions of the drama: Toussaint must ward-off the temptations coming from the enemy (the messenger), from his own people (his son), and from a divine being (the Holy Virgin). This simple triune structure of temptation will carry over in all other reincarnations of the drama. These structural and thematic echoes, in turn, will make it easy for Césaire to bring all former action to the prison cell in a virtuoso exercise of cut and paste, and the thorough erasure of historical references to the Haitian Revolution.

At this early stage, though, the drama—and this chapter—ends where I find it most useful, with the continuation of war, and what we can only assume is Toussaint's voice in the wind asking his people to till him, to till him until his bones flare in the midnight of his flesh.

...

Many other speculative stages could help our genetic analysis of the typescript. In fact, by ending our analysis of speculative stages here, we are ending it in the middle of the process that produced the typescript as we know it. I encourage the future student of the text to generate their own intermediary steps, and perhaps correct or offer an alternative to my genetic tale.

In the next chapters we will study Césaire's migrant textuality prior to the first publication of *Et les chiens se taisaient* in the poetry collection *Les Armes miraculeuses* (1946), and expand on some of the themes explored in this chapter, to answer the why and not the how of Césaire's move away from history. To accomplish our goal, we will address more familiar, and therefore less controversial textual boundaries (the book, the poem, the article, the preview, etc.) and their attendant geo-temporal complexities. In other words, we will move away from the decomposition and comparison of the one document with itself, to the comparison of many documents with each other.

<br>

---

## notes

<br>

[^b1]: I was happy to see the familiar face of Stanford's *[Mapping the Republic of Letters](http://republicofletters.stanford.edu/)* in the exhibit, among a few other examples of digital humanities.

[^b2]: The irony of this sentence and the ones that follow does not escape me: If you know how git works, you didn't need me to tell you how to do this, and if you don't, this sentence remains completely superfluous.

[^b3]: McGann worked on these ideas for many years starting in the 1980s, and as far as I know, has not left them behind. A phenomenal place to start is McGann, Jerome J. *The Textual Condition*. Princeton, N.J: Princeton University Press, 1991. (48-68). Print. Any study of McGann's middle period should also be accompanied by a study of D.F. McKenzie, who approached the "sociology of texts" as a materialist and textual critic. A good place to start is McKenzie, D. F. *Bibliography and the Sociology of Texts*. Cambridge, U.K. ; New York: Cambridge University Press, 1999. Print.

[^b4]: Shall we call ours The Digital Antrumpocene?

[^b5]: The designation comes from a draft made available to the public as [a Google Doc](https://docs.google.com/document/d/1aKtMon5LE7tRMOLo41HNDKrfEThp2nFLduLAPJ5Vvy4/edit) by Kraus herself, to be included soon in Kraus, Kari. "Finding Fault Lines: An Approach to Speculative Design," *The Routledge Companion to Media Studies and Digital Humanities*. Sayers, Jentery, ed. 1 edition. Routledge, 2017. (Forthcoming).

[^b6]: Kraus, Kari. “[Conjectural Criticism: Computing Past and Future Texts]9http://www.digitalhumanities.org/dhq/vol/3/4/000069/000069.html).” 3.4 (2009): Digital Humanities Quarterly. Web. Accessed 20 May 2017. Kraus is referring here to Ramsey, Stephen. "Algorithmic Criticism." *Companion to Digital Literary Studies* (Blackwell Companions to Literature and Culture). Ed. Schreibman, Susan, and Ray Siemens. Oxford: Blackwell Publishing Professional, 2008. Print.
  
[^b7]: CSS and LaTeX files provide excellent documentation for this phenomenon. Last week, regaling with fellow traveler Dennis Tenen, the subject turned to the slippery two-way slope between the analog and the digital. In his recently published monograph, *Plain Text: The Poetics of Computation*, Tenen argues that the "properties that make media 'digital' or 'analog', reveal themselves to be neither universal nor essential to the medium. The medium is not the message."(30) What we find instead is a case-specific relay between the two in both computational and paper-based media at different scales, exemplified by the split of the sign across various surfaces (magnetic drives, carbon paper, cables, screen, etc.). The greatest trick the allograph ever pulled was to convince the world the ~60 Hertz flicker did not exist. Along those lines, it occurred to me that no digital humanist we knew of had yet tried to data mine CSS files online to distant read the autographic surface of the screen. I was only half-joking.

[^b9]: An insightful conversation takes place in the comment section, where among other shrewd commentary, deformity itself is questioned through the lens of disability studies.

[^b10]: Sample, Mark. “[Notes towards a Deformed Humanities](http://www.samplereality.com/2012/05/02/notes-towards-a-deformed-humanities/).” samplereality. 2 May 2012. Web. 20 May 2017.; Samuels, Lisa, and Jerome McGann. “Deformance and Interpretation.” New Literary History; Baltimore, etc. 30.1 (1999): 25–56. Print.

[^b11]: Nelson, Alondra. “Introduction: Future Texts.” Social Text 20.2 (2002): 1–15. Print.

[^b12]: See, Davis, Gregson. Aimé Césaire. New York: Cambridge UP, 1997. Print. Cambridge Studies in African and Caribbean Literature. (128-129); Leiner, Jacqueline. “Entretien avec Aimé Césaire.” Tropiques. Paris: Éditions Jean-Michel Place, 1978. (v–xxiv). Print; Bailey, Marianne Wichmann. The Ritual Theater of Aimé Césaire: Mythic Structures of the Dramatic Imagination. Tübingen: Gunter Narr Verlag, 1992. Print. Études Littéraires Françaises 49. (109). 

[^b13]: Melsan, Annick Thebia. “The Liberating Power of Words: An Interview with Poet Aimé Césaire.” Journal of Pan African Studies 2.4 (2008): 17. Print.

[^b14]: In both cases, I owe an enormous debt of gratitude to ITEM and l'Agence Universitaire de la Francophonie. 

[^b15]: In this stemma I only focus on the branch that leads to the speculative stages studied in this chapter. Many other transformations from the original TEI have already been produced in other branches, including the branch belonging to my diplomatic edition of the text published in *Césaire, Aimé. Poésie, théâtre, essais et discours.* Ed. Albert-James Arnold. Paris: CNRS, 2014. Print. Planète libre.

[^b19]: [Ha, ha, ha. Words, nothing but words: not three, but a thousand words, Toussaint... Oh, my friend, my naive friend, would you like money? Titles? Land? Would you like to be field marshall? Grandee like Biassou? King... that's it... you will be King... I swear you will be King.]

[^b20]: [My voice crumples words of silk.]

[^b21]: [I am afraid, I am alone/my forests have no ears]

[^b22]: [Christopher Columbus II, the same: Leave your mother! Abandon her! Leave your family! Leave, leave your mother! Your country is the Will of God. All that prevents you from leaving is your true enemy. //Christopher Columbus I: Will I leave my father and my mother? Will I leave my country? All of this appears mixed on the screen.]

[^b23]: [The Recitress (sorrowful): 300,000 men, shackles broken, descend on the town with rabid howls... The port is covered by whites who attempt to gain the stranded ships... Oh, the boats capsize... (As she is talking, all of this is taking shape on the screen.)]

[^b24]: Walsh, John Patrick. Free and French in the Caribbean: Toussaint Louverture, Aimé Césaire, and Narratives of Loyal Opposition. Bloomington: Indiana University Press, 2013. Print.


[^21]: \[Go back inside, girls, playtime is over, the orbits of death push their fiery eyes through the pale mica\]

[^22]: \[Is it a riddle?\]

[^23]: This is the French equivalent of “Boo” in English. In other words, the girls are imitating the sounds of ghosts in mock-scary.

[^24]: We can't say with certainty how `P2` originally began because we are missing the first two pages.

[^25]: \[(At that moment darkness engulfs the stage; gunshots; discordant cries; gradually, the disturbance settles down; when the light returns, the decor has changed; the black camp in the middle of a forest. Meeting of black chiefs and white deputies.)\]

[^26]: \[(In the chasm of fright, a vast collective prison peopled with *nègres,* all contenders for madness and death; thirtieth day of the famine, the torture and the delirium.)\]

[^27]: On page `P1.15` we find, for example, a stage direction describing the smell of blood, and another, immediately after, describing the silence that falls on the stage as rigid and funereal. On the last page we find one of the most fascinating stage directions in the whole typescript and I discuss it directly later in the chapter. Page `P1.15` and the last page, `P1.20` (40), also share another peculiarity in addition to their extra-theatrical stage directions. They are the only two pages in `P1` without any dark pencil corrections. We should note also that half of the parentheses around stage directions in `P1` were added in pencil, especially on the first 6 pages, pages `P1.12` (32), `P1.17` (33) and `P1.18` (34). An argument can be made that these pages represent yet an earlier stage than the rest. Page `P1.15` and `P1.20` are, of course, probably the latest additions to `P1`.

[^28]:
	This refrain will play a pivotal role in the trajectory of the drama. Césaire tones down his rhetorical stance when he publishes the substantially revised version for an international context in 1946, where the refrain is mostly excised from the new text. In the 1956 version, Césaire will go as far as assigning a couple of stanzas to the Rebel which question the wisdom of the rallying cry.

	"Mort aux blancs" has a long documented history in revolutionary movements across the Americas, including, and probably starting in the Haitian Revolution. The cry is often associated in the literature to Dessalines' war of extermination, and specifically his "I Have Avenged America" proclamation of 1804, where he famously commanded, "Guerre à mort aux tyrans ! Voilà ma devise : Liberté, independance ! Voilà notre cri de ralliement." [War to the death for the Tyrants! This is my motto; Freedom! Independence! This is our rallying cry.] But the specific cry may have actually been common in the actual conflicts, and not necessarily tied to Dessalines. Thomas Madiou, whom Césaire may have read, tells us in his retelling of the conflicts around Cap in 1801, where Cristophe was the lead, that "*On n'entendit partout que le cri de mort aux Blancs*" [All we could hear anywhere was the cry, death to the whites]; Madiou, Thomas. Histoire d’Haïti: 1799-1803. Vol. 2. Port-au-Prince: Editions H. Deschamps, 1989. Print. 148. 


[^29]: Philippe François Rouxel, vicomte de Blanchelande, was governor of Saint-Domingue when the revolution began. The reference places the action around the end of 1791, right before Toussaint and other rebels met with the governor for fruitless negotiations. Unlike the Blanchelande of the drama, whose head ended up on a pike, the historical Blanchelande returned safely to France in September of 1792, where in 1793 his head ended up in a basket.

[^30]: \[A sinister and buffoonish gathering, full of bombast and cruelty.\]

[^31]: In a later revision, Boukman gets crossed out in dark pencil, leaving Toussaint to build an army by himself.

[^32]: The historical Dutty Boukman was killed in November of 1791, and as far as I know, he did not fight alongside Toussaint. The ceremony of Bois Caïman, led by Boukman, took place on August 14, 1791. Toussaint is not documented at the ceremony that sparked the revolt cum revolution. What we do know is that he joined as doctor to the troops under the command of  Georges Biassou, a few weeks after the revolt had caught on. In December 1791, after Boukman's passing, he plays an important role in negotiations with the French Governor, marking the beginning of his historical rise to prominence. 

[^33]: Jean Jacques Dessalines was the most important leader of the revolution besides Toussaint Louverture.

[^34]: Ironically, the more ‘avant-garde’ version of 1946 will reclaim all three Aristotelian units of time, space and action.

[^35]: The song is mockingly reprized on page `P1.15` (35) by the vengeful crowds of slaves.

[^36]: To listen to the song and learn more about its history, you can visit the excellent digital archive [Du Temps des cerises aux Feuilles mortes](http://bit.ly/hhmApD). To simply read the lyrics, follow [this link](https://genius.com/Mayol-a-la-martinique-lyrics).

[^37]: \[As she speaks, all of it is drawn on the screen\]

[^38]: American audiences may recognize Méliès from Martin Scorsese's 2011 film *Hugo*, an adaptation of the 2007 illustrated novel *The Invention of Hugo Cabret* by Brian Selznick.

[^39]: See for example, Owusu-Sarpong, *Le Temps historique dans l’œuvre théâtrale d’Aimé Césaire*, Quebec: Editions Naaman, 1986. There have even been at least two doctoral thesis written on the subject: Hawkes, Sophie. “The Drama of Liberation: A Comparative Study of Aimé Césaire's Theater; A Translation of Césaire's 'And the Dogs Were Silent'” New York University, 1988. and Alhamdou, Ali. “Conceptualisation De la liberté dans les théâtres de Bertolt Brecht et dʼAimé Césaire.” 1999 : Toulousse

[^40]: Laforgue, Pierre. “[Césaire et Claudel : une cantate à deux voix.](http://www.paul-claudel.net/bulletin/bulletin-de-la-societe-paul-claudel-n%C2%B0205)” Bulletin de la Société Paul Claudel 205 (2016). 

[^41]: Claudel, Paul. *Le Livre de Christophe Colomb.* Ed. Michel Lioure, Paris: Gallimard (2005) p.208

[^42]: For a well-rounded analysis of the role of intermediation in Claudel and Piscator see Plana, Muriel. Roman, théâtre, cinéma : Adaptations, hybridations et dialogue des arts. Rosny-sous-Bois (Seine-Saint-Denis): Bréal, 2004. Print.

[^43]: Columbus also makes an important apparition in Jahn's adaptation. The echoes between Jahn's contributions in the 1950's and the early text, which Jahn never saw, continue to amaze me.

[^44]: \[In the back of the stage\]

[^45]: \[All of this appears mixed together on the screen\]

[^46]: \[The silence already poisons every fiber/Half-swallowed hieroglyphic gestures signal/The plowing and seeding of corpses\]

[^47]: \[The Reciter: A whistle… The blacks exit from the brushes with a great uproar. The cutlasses clash and they are raised again and they clash in the reel of exasperation.\]



[^49]: \[The Chorus: My eye is gilded with sovereign visions… Toussaint makes his solemn entry in Santo Domingo. The *cabildo* hands him the keys to the city.\] Césaire misspells the Spanish word *cabildo* (twice). A *cabildo* was a Spanish form of local government best understood as a colonial administrative council. It was indeed a Spanish *cabildo* in Hispaniola which surrendered to Toussaint Louverture in 1801.

[^50]: \[The scene is at Saint Domingue…at the time of the French Revolution\]

[^51]: \[The Chorus: Hurrah! The English have lost… Our batteries of approach sweep their ramparts… our breaching artillery is in place… Saint-Marc cracks… like a rotten ship.\]

[^52]: \[Toussaint: ~~I had brought~~ I will bring this country to the knowledge/ of itself,/ I ~~familiarized~~ will familiarize this land with its secret demons/~~lit~~ I will light the craters of helodermes and cymbals/the symphonies of an unknown hell, splendid/infested with haughty nostalgias.\]

[^53]: \[On the margins of jolting waves, I march on the water of turning Springs; I perceive high up my sentinel eyes. Foolproof, insomnia grows like the disobedience along the free temples of the woman with amphora, Aquarius, Aquarius germ tempest, kettle.\]

[^54]: The king in question could be a reference to Napoleon who by 1801 was already in power. The choice of king is not at all surprising since that word will become a grab-all for all forms of supreme rule in the drama. In the following scene in particular, it is precisely that title which is offered to Toussaint.

[^55]: \[Voices of temptation\]

[^56]: \[The grand University Professor: Glory and renown for Toussaint Louverture, educator of the masses! Leave it to Villaret-Joyeuse to close the schools in neighboring Martinique and cynically declare: “Ignorance is a necessary bond for men chained by violence or withered by prejudice.”\]

[^57]: Other possibilities are Sylvain, Benito. Étude Historique Sur Le Sort Des Indigènes Dans Les Colonies D’exploitation. \[Paris\]: Univ. de Paris., 1901. 153. Print; or Locqueneuille, Scarsez de. L’esclavage; Ses Promoteurs Et Ses adversaires: Notes Et Documents Pour Servir À L'histoire De L'esclavage Dans Ses Rapports avec Le Catholicisme, Le Protestantisme Et Les Principes De 89. \[Paris\]: L. Grandmont-Donders, imprimeur-libraire, 1890. 318. Print.

[^58]: [tentacular apostrophes], [scholarly ruses], [the ship-wreckers' cow]. The last one refers to legends from Bretagne of hungry coast dwellers who tricked ships to the reefs in order to spoil the wreck. Some legends speak of hanging lamps on cows' horns at night to make them look like ship lights in order to pull off the caper.

[^59]: For a summary of some of the 20th century debates on the function of the chorus in classical Greek tragedy see Weiner, Albert. “The Function of the Tragic Greek Chorus.” Theatre Journal 32.2 (1980): 205–212. JSTOR. Web.

[^60]: Kitto, H. D. F. (Humphrey Davy Findley). Greek Tragedy : A Literary Study. Garden City, N.Y. : Doubleday, 1954. Internet Archive. Web. 23 June 2017. (63)

[^61]: From the famous closing paragraph of Chapter 9 of Nietszche's "Birth of Tragedy."

[^62]: Césaire, Aimé. “Poésie et connaissance.” Cahiers d’Haïti 2.5 (1944): 14–19. Print.

[^63]: [In the time when cognizance was a co-nascent, in the Claudelian sense of the word] In French, as in English, the kinship between *connaissance* and *co-naissance* comes from word play rather than etymology, which in proto-Indo-European would take us to recognition, not birth. 

[^64]: These lines originally appeared in my contribution to the Nietzsche 13/13 seminars held at Columbia University (2016-2017), "[Repairing Nietzsche in Césaire: A few damned notes](http://blogs.law.columbia.edu/nietzsche1313/repairing-nietzsche-in-cesaire-a-few-damned-notes/)."

[^65]: [Long live vengeance. Long live freedom./The mountains will tremble like a tooth caught between forceps. The stars will crash on the ground their pregnant woman front.]

[^66]: [This country bites: open mouth of a fire throat, convergence of fire hooks on the rump of bad America.]

[^67]: [That which belongs to me: some thousand morbidities that spin inside the island gourd; and that which belongs to me: the arched archipelago like the disquieted desire to negate yourself ... and the flanks secreting towards Europe the good liquor of a Gulf Stream, one of them the incandescence by which the Equator tightropes towards Africa.]; from Césaire, Aimé. “Cahier d’un retour au pays natal.” Volontés 20 (1939): 23–51. Print. 


