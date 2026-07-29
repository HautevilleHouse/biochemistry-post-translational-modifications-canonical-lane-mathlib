import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure ReactionKineticsPackage where
  kineticModel : Prop
  rateConstants : Prop
  substrateBinding : Prop
  catalyticEfficiency : Prop
  regulationByPTM : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  kineticModelClosed : R.kineticModel
  rateConstantsClosed : R.rateConstants
  substrateBindingClosed : R.substrateBinding
  catalyticEfficiencyClosed : R.catalyticEfficiency
  regulationByPTMClosed : R.regulationByPTM

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.kineticModel ∧ R.rateConstants ∧ R.substrateBinding ∧ R.catalyticEfficiency ∧ R.regulationByPTM

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.kineticModelClosed
    (And.intro E.rateConstantsClosed
      (And.intro E.substrateBindingClosed
        (And.intro E.catalyticEfficiencyClosed E.regulationByPTMClosed)))

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse