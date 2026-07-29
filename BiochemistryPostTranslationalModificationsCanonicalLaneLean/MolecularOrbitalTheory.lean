import BiochemistryPostTranslationalModificationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure MolecularOrbitalPackage where
  molecule : Type
  orbitalEnergies : List ℝ
  homoEnergy : ℝ
  lumoEnergy : ℝ
  gapEnergy : ℝ
  frontierOrbitalTheoryApplied : Prop
  symmetryAllowed : Prop
  orbitalOverlap : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  homoLumoGapPositive : M.gapEnergy > 0
  symmetryAllowedClosed : M.symmetryAllowed
  orbitalOverlapClosed : M.orbitalOverlap

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.frontierOrbitalTheoryApplied ∧ M.symmetryAllowed ∧ M.orbitalOverlap

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro M.frontierOrbitalTheoryApplied (And.intro E.symmetryAllowedClosed E.orbitalOverlapClosed)

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse