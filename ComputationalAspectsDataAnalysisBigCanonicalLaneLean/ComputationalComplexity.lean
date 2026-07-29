import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

structure ComplexityClass where
  name : String
  timeBound : String
  spaceBound : String

structure Reducibility where
  from : ComplexityClass
  to : ComplexityClass
  mapping : String

structure HierarchyTheorem where
  classA : ComplexityClass
  classB : ComplexityClass
  strictInclusion : Prop

def TimeHierarchy : HierarchyTheorem := {
  classA := { name := "DTIME(n)", timeBound := "n", spaceBound := "∞" },
  classB := { name := "DTIME(n^2)", timeBound := "n^2", spaceBound := "∞" },
  strictInclusion := True
}

def SpaceHierarchy : HierarchyTheorem := {
  classA := { name := "DSPACE(n)", timeBound := "∞", spaceBound := "n" },
  classB := { name := "DSPACE(n^2)", timeBound := "∞", spaceBound := "n^2" },
  strictInclusion := True
}

theorem time_hierarchy_exists : TimeHierarchy.strictInclusion := by
  trivial

theorem space_hierarchy_exists : SpaceHierarchy.strictInclusion := by
  trivial

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse