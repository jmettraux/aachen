
<!-- .margin.compass -->
* _Character Sheet_

<img src="csheet_left_0.png" style="float: right;" />

<!-- <div.comment.se.c_abilities_0> -->

Roll 3d6 for Abilities, then compute the `TC`s (21 - Ability).

<!-- </div> -->

<!-- <div.comment.se.c_skills_0> -->

Skills are obtained via the Background and then the Class.

<!-- </div> -->

<!-- <div.comment.se.c_skills_1> -->

There are 3 types of skills: General, Magical, and Fighter skills.

<!-- </div> -->

<!-- <div.comment.ne.c_skills_m> -->

The main magical skill is _Weave_ but the other skills are necessary when composing effective threads of magic.

<!-- </div> -->

<!-- <div.comment.ne.c_skills_f> -->

Fighter skills cover weapons and _Throw_, _Punch_, _Grapple_, and _Dodge_.

Melee weapons and _Shields_ cover attack and parry.

<!-- </div> -->


<!-- PAGE BREAK csheet -->


<!-- .margin.compass -->
* _Character Sheet_

<img src="csheet_right_0.png" />

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
  [data-aa-title="csheet"] .comment p {
    text-align: left;
  }
  [data-aa-title="csheet"] .comment p:last-child {
    margin-bottom: 0;
  }

  [data-aa-title="csheet"] .c_abilities_0  { top:  4.2rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_skills_0     { top: 23.0rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_skills_1     { top: 30.0rem; left:   1.7rem; }
  [data-aa-title="csheet"] .c_skills_m     { top: 45.0rem; right: 15.5rem; }
  [data-aa-title="csheet"] .c_skills_f     { top: 45.0rem; right:  3.5rem; }
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
