import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPostTranslationalModificationsCanonicalLaneLean

structure SourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String

def sourceFormulaModels : List SourceFormulaModel :=
  [ { group := "constants", key := "kcat_km", status := "derived_numeric",
      formula := "kcat_raw / km_raw", sourceSection := "biochemistry PTM kinetics Section 3.1",
      validation := "required_positive", componentKeys := ["kcat_raw", "km_raw"] },
    { group := "constants", key := "delta_g_binding", status := "derived_numeric",
      formula := "delta_h - temperature * delta_s", sourceSection := "thermodynamics Section 4.2",
      validation := "required_finite", componentKeys := ["delta_h", "temperature", "delta_s"] } ]

theorem formalization_source_formula_count_checked : sourceFormulaModels.length = 2 := by
  rfl

end BiochemistryPostTranslationalModificationsCanonicalLaneLean
end HautevilleHouse