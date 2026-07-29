import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure SignalingCascadePackage where
  kinaseActivation : Prop
  phosphataseActivity : Prop
  scaffoldProteins : Prop
  feedbackLoops : Prop
  PTMCrossTalk : Prop

structure SignalingCascadeEvidence (S : SignalingCascadePackage) where
  kinaseActivationClosed : S.kinaseActivation
  phosphataseActivityClosed : S.phosphataseActivity
  scaffoldProteinsClosed : S.scaffoldProteins
  feedbackLoopsClosed : S.feedbackLoops
  PTMCrossTalkClosed : S.PTMCrossTalk

def SignalingCascadeClosed (S : SignalingCascadePackage) : Prop :=
  S.kinaseActivation ∧ S.phosphataseActivity ∧ S.scaffoldProteins ∧ S.feedbackLoops ∧ S.PTMCrossTalk

theorem signaling_cascade_closed_from_evidence (S : SignalingCascadePackage) (E : SignalingCascadeEvidence S) :
    SignalingCascadeClosed S := by
  exact And.intro E.kinaseActivationClosed
    (And.intro E.phosphataseActivityClosed
      (And.intro E.scaffoldProteinsClosed
        (And.intro E.feedbackLoopsClosed E.PTMCrossTalkClosed)))

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse