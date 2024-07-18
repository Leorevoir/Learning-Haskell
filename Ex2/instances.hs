import Data.Semigroup (Semigroup, (<>))
import Data.Monoid (Monoid, mempty)


newtype Gold = Gold
    { unGold :: Int
    } deriving (Show, Eq)


-- addition of gold coins
--   ex:
--     >>> Gold 5 <> Gold 3
--     Gold 8
instance Semigroup Gold where
    (<>) (Gold x) (Gold y) = Gold (x + y)


instance Monoid Gold where
    mempty = Gold 0
    mappend = (<>)


-- if you combine multiple rewards, the final reward will contain a
-- special prize if at least one of the rewards is special
--   ex:
--     >>> let r1 = Reward (Gold 5) True
--     >>> let r2 = Reward (Gold 3) False
--     >>> r1 <> r2
--     Reward {rewardGold = Gold {unGold = 8}, rewardSpecial = True}
data Reward = Reward
    { rewardGold    :: Gold
    , rewardSpecial :: Bool
    } deriving (Show, Eq)


instance Semigroup Reward where
    (<>) (Reward g1 s1) (Reward g2 s2) = Reward (g1 <> g2) (s1 || s2)


instance Monoid Reward where
    mempty = Reward mempty False
    mappend = (<>)


-- list that contains at least one element
data List1 a = List1 a [a]
    deriving (Show, Eq)


-- List1 append
--   ex:
--     >>> let l1 = List1 1 [2, 3]
--     >>> let l2 = List1 4 [4, 6]
--     >>> l1 <> l2
--     List1 [2, 3, 4, 5, 6]
instance Semigroup (List1 a) where
    (<>) (List1 x xs) (List1 y ys) = List1 x (xs ++ [y] ++ ys)

