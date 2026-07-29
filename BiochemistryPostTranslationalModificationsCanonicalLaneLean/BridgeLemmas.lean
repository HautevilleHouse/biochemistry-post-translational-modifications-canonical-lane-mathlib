import HautevilleHouse.BiochemistryPostTranslationalModificationsCanonicalLaneLean.PTMObjects

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

def bridgeClosed (A : PTMAdmissibleClass) : Prop :=
  PTMWitnessClosed A.object

theorem bridge_from_admissible_class (A : PTMAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse