module Basic.Adjunction

import Basic.Category
import Basic.Functor
import Basic.NaturalIsomorphism
import Dual.DualCategory
import Idris.TypesAsCategoryExtensional as Idris
import Product.ProductCategory
import Profunctors.HomFunctor

public export
Adjunction : {cat1, cat2 : Category} -> CFunctor cat2 cat1 -> CFunctor cat1 cat2 -> Type
Adjunction funL funR = NaturalIsomorphism (costar funL) (star funR)
