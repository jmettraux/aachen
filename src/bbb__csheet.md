
<!-- .margin.compass -->
* _Character Sheet_


<img src="csheet_left_0.png" style="float: right;" />


<!-- <div.comment.se.c_abilities_0> -->

Roll 3d6 for Abilities, then compute the `TC`s (21 - Ability).

<!-- </div> -->

<!-- <div.comment.ne.c_averages> -->

East of "Abi TCs" are "averages".

For example "Body TC" is the average of `STR TC`, `CON TC`, and `DEX TC`.

<!-- </div> -->

<!-- <div.comment.se.c_skills_0> -->

Skills are obtained via the Background and then the Class.

<!-- </div> -->

<!-- <div.comment.se.c_skills_1> -->

There are 3 types of skills: General, Magical, and Fighter skills.

<!-- </div> -->

<!-- <div.comment.ne.c_skills_m> -->

The magical skills tell in what way `Caster` characters weave magical threads.

<!-- </div> -->

<!-- <div.comment.ne.c_skills_f> -->

Fighter skills cover weapons and _Throw_, _Punch_, _Grapple_, and _Dodge_.

Melee weapons and _Shields_ cover attack and parry.

<!-- </div> -->


<!-- PAGE BREAK csheet -->


<!-- .margin.compass -->
* _Character Sheet_


<img src="csheet_right_0.png" />


<!-- <div.comment.nw.c_confs> -->

A "configuration" is a combination armor / shield / weapon.

The default/usual configuration of the character should be on the top.

<!-- </div> -->

<!-- <div.comment.sw.c_spells> -->

A caster knows one or more spell colours and one or more spell forms.

Combined with magical skills, that determines what spells may be cast.

The caster here knows [ Throw / Soak ] × [ Gold ] × [ Arrow / Pole ]

<!-- </div> -->

<!-- <div.comment.nw.c_acs> -->

On the left, the AC without a shield (best of weapon skill and _Dodge_ skill), on the right, the AC with a shield (best of weapon skill, _Dodge_ skill, and _Shields_ skill).

<!-- </div> -->

<!-- <div.comment.nw.c_base_ac> -->

The base AC ranges from 10 to 16.

It's the base to compute the ACs in their shield icons.

<!-- </div> -->



<style>
    /* TODO move .comment to the .css */
  [data-aa-title="csheet"] .comment {
    position: absolute;
    top: 1rem;
    background-color: white;
    padding: 0.6rem;
    width: 8rem;
    font-size: var(--size-b);
    line-height: var(--mul-b);
  }
  [data-aa-title="csheet"] .comment.se {
    border-right: 4px solid grey;
    border-bottom: 4px solid grey;
  }
  [data-aa-title="csheet"] .comment.ne {
    border-top: 4px solid grey;
    border-right: 4px solid grey;
  }
  [data-aa-title="csheet"] .comment.sw {
    border-left: 4px solid grey;
    border-bottom: 4px solid grey;
  }
  [data-aa-title="csheet"] .comment.nw {
    border-top: 4px solid grey;
    border-left: 4px solid grey;
  }
  [data-aa-title="csheet"] .comment p {
    text-align: left;
    text-indent: 0;
  }
  [data-aa-title="csheet"] .comment p:last-child {
    margin-bottom: 0;
  }

  [data-aa-title="csheet"] .c_abilities_0  { top:  4.2rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_averages     { top: 10.0rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_skills_0     { top: 23.0rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_skills_1     { top: 30.0rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_skills_m     { top: 45.0rem; right: 15.5rem; }
  [data-aa-title="csheet"] .c_skills_f     { top: 45.0rem; right:  3.5rem; }

  [data-aa-title="csheet"] .c_confs    { top: 24.00rem; right:  2.5rem; }
  [data-aa-title="csheet"] .c_spells   { top:  8.65rem; right:  2.5rem; }
  [data-aa-title="csheet"] .c_acs      { top: 45.00rem; left:   2.1rem; }
  [data-aa-title="csheet"] .c_base_ac  { top: 45.00rem; left:  14.1rem; }
</style>


<script>

onDocumentReady(function() {
  var ce = elt('[data-aa-title="csheet"]');
  elts(ce, '.page').forEach(function(pe) {
    elts(pe, '.comment').forEach(function(cme) {
      pe.appendChild(cme);
    });
  });
});

</script>
