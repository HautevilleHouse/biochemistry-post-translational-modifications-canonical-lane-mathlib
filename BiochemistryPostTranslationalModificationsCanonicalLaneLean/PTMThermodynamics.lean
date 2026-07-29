import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpyChange : Prop
  entropyChange : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  PTMAffected : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  PTMAffectedClosed : T.PTMAffected

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.PTMAffected

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.equilibriumConstantClosed E.PTMAffectedClosed)))

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse