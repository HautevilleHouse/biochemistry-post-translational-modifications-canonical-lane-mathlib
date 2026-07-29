import BiochemistryPostTranslationalModificationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRate : ℝ
  rateConstant : ℝ
  substrateConcentration : ℝ
  enzymeConcentration : ℝ
  productFormationRate : ℝ
  michaelisMentenSaturation : Prop
  firstOrderKinetics : Prop
  secondOrderKinetics : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateConstantPositive : R.rateConstant > 0
  reactionRateMatchesMichaelisMenten : R.reactionRate = (R.rateConstant * R.enzymeConcentration * R.substrateConcentration) / (R.substrateConcentration + 1) -- simplified
  saturationCondition : R.michaelisMentenSaturation

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.michaelisMentenSaturation ∧ R.firstOrderKinetics ∧ R.secondOrderKinetics

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.saturationCondition (And.intro R.firstOrderKinetics R.secondOrderKinetics)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse