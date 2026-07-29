import canonicalLaneMathlib.AdmissibleClass

/-!
# Dynamical System Foundation Package
-/

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure DynamicalSystemFoundationPackage where
  phaseSpace : Type
  vectorField : Type
  flow : Type
  parameterFamily : Type
  equilibriumSet : Prop
  stabilityProperties : Prop

structure DynamicalSystemFoundationEvidence (D : DynamicalSystemFoundationPackage) where
  phaseSpaceClosed : D.phaseSpace
  vectorFieldClosed : D.vectorField
  flowClosed : D.flow
  parameterFamilyClosed : D.parameterFamily
  equilibriumSetClosed : D.equilibriumSet
  stabilityPropertiesClosed : D.stabilityProperties

def DynamicalSystemFoundationClosed (D : DynamicalSystemFoundationPackage) : Prop :=
  D.phaseSpace ∧ D.vectorField ∧ D.flow ∧
  D.parameterFamily ∧ D.equilibriumSet ∧ D.stabilityProperties

theorem dynamical_system_foundation_closed_from_evidence (D : DynamicalSystemFoundationPackage)
    (E : DynamicalSystemFoundationEvidence D) : DynamicalSystemFoundationClosed D := by
  exact And.intro E.phaseSpaceClosed
    (And.intro E.vectorFieldClosed
      (And.intro E.flowClosed
        (And.intro E.parameterFamilyClosed
          (And.intro E.equilibriumSetClosed E.stabilityPropertiesClosed))))

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
