import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure EnzymeKineticsPackage where
  enzyme : Type
  substrate : Type
  km : Float
  kcat : Float
  modSite : String
  kineticsModelValid : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  kineticsModelValidClosed : E.kineticsModelValid
  kmPositive : E.km > 0
  kcatPositive : E.kcat > 0

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.kineticsModelValid ∧ E.km > 0 ∧ E.kcat > 0

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage)
    (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.kineticsModelValidClosed (And.intro Ev.kmPositive Ev.kcatPositive)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse