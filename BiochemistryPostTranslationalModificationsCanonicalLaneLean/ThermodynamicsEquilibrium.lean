import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergyChange : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  equilibriumConstant : ℝ
  temperature : ℝ
  ph : ℝ
  standardConditions : Prop
  vanHoffEquationValid : Prop
  equilibriumReached : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  standardConditionsClosed : T.standardConditions
  vanHoffEquationValidClosed : T.vanHoffEquationValid
  equilibriumReachedClosed : T.equilibriumReached

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.standardConditions ∧ T.vanHoffEquationValid ∧ T.equilibriumReached

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.standardConditionsClosed
    (And.intro E.vanHoffEquationValidClosed E.equilibriumReachedClosed)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse