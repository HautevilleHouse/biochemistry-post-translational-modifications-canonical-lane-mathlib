import canonicalLaneMathlib.AdmissibleClass
import PTMEnzymeKinetics
import PTMClassification

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure SignalingPathwayPackage {E : EnzymeKineticsPackage} {C : PTMClassificationPackage} where
  pathwayName : String
  signalTransduction : Prop
  feedbackLoops : Prop
  crossTalk : Prop

structure SignalingPathwayEvidence {E : EnzymeKineticsPackage} {C : PTMClassificationPackage}
    (P : SignalingPathwayPackage E C) where
  signalTransductionClosed : P.signalTransduction
  feedbackLoopsClosed : P.feedbackLoops
  crossTalkClosed : P.crossTalk

def SignalingPathwayClosed {E : EnzymeKineticsPackage} {C : PTMClassificationPackage}
    (P : SignalingPathwayPackage E C) : Prop :=
  P.signalTransduction ∧ P.feedbackLoops ∧ P.crossTalk

theorem signaling_pathway_closed_from_evidence
    {E : EnzymeKineticsPackage} {C : PTMClassificationPackage}
    (P : SignalingPathwayPackage E C) (Ev : SignalingPathwayEvidence P) :
    SignalingPathwayClosed P := by
  exact And.intro Ev.signalTransductionClosed
    (And.intro Ev.feedbackLoopsClosed Ev.crossTalkClosed)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse