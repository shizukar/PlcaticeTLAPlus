---------- MODULE light ------------
(* --algorithm light
    variable
      light = "red";
    begin
     Green:
       light := "green";
     Yellow:
         light := "yellow";
     Red:
         light := "red";
end algorithm;*)     
\* BEGIN TRANSLATION - the hash of the PCal code: PCal-3e7e8a90b5c8bc74d034778c03ed9179
VARIABLES light, pc

vars == << light, pc >>

Init == (* Global variables *)
        /\ light = "red"
        /\ pc = "Green"

Green == /\ pc = "Green"
         /\ light' = "green"
         /\ pc' = "Yellow"

Yellow == /\ pc = "Yellow"
          /\ light' = "yellow"
          /\ pc' = "Red"

Red == /\ pc = "Red"
       /\ light' = "red"
       /\ pc' = "Done"

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Green \/ Yellow \/ Red
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION - the hash of the generated TLA code (remove to silence divergence warnings): TLA-a00bc881af4614e9fd0decaf08e1d842
====
