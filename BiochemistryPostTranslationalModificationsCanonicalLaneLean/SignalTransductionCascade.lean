import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure SignalTransductionCascadePackage where
  cascadeComponents : List String
  activationSequence : List (String × String)
  signalAmplification : Bool
  cascadeValid : Prop

structure SignalTransductionCascadeEvidence (S : SignalTransductionCascadePackage) where
  cascadeValidClosed : S.cascadeValid
  consistentSequence : ∀ (a b : String), (a, b) ∈ S.activationSequence → a ≠ b

def SignalTransductionCascadeClosed (S : SignalTransductionCascadePackage) : Prop :=
  S.cascadeValid ∧ ∀ (a b : String), (a, b) ∈ S.activationSequence → a ≠ b

theorem signal_transduction_cascade_closed_from_evidence
    (S : SignalTransductionCascadePackage)
    (Ev : SignalTransductionCascadeEvidence S) :
    SignalTransductionCascadeClosed S := by
  exact And.intro Ev.cascadeValidClosed Ev.consistentSequence

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse