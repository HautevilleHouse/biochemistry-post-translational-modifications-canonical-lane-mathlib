import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure MolecularOrbitalPackage where
  frontierOrbitalHOMO : Prop
  frontierOrbitalLUMO : Prop
  reactivityIndices : Prop
  PTMInducedShift : Prop
  molecularGeometry : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  frontierOrbitalHOMOClosed : M.frontierOrbitalHOMO
  frontierOrbitalLUMOClosed : M.frontierOrbitalLUMO
  reactivityIndicesClosed : M.reactivityIndices
  PTMInducedShiftClosed : M.PTMInducedShift
  molecularGeometryClosed : M.molecularGeometry

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.frontierOrbitalHOMO ∧ M.frontierOrbitalLUMO ∧ M.reactivityIndices ∧ M.PTMInducedShift ∧ M.molecularGeometry

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.frontierOrbitalHOMOClosed
    (And.intro E.frontierOrbitalLUMOClosed
      (And.intro E.reactivityIndicesClosed
        (And.intro E.PTMInducedShiftClosed E.molecularGeometryClosed)))

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse