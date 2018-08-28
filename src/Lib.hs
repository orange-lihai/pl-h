module Lib
    ( someFunc,
    doubleMe
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- 一些简单的函数示例

doubleMe :: (Num a) => a -> a
doubleMe x = x + x

doubleUs :: (Num a) => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleIf :: (Num a, Ord a) => a -> a
doubleIf x = (if x > 100 then x + 1 else x * 2) + 1

strCons = "String Constant ..."


-- List 入门, 先看一个整数类型的 List
listOfNum :: [Integer]
listOfNum = [2,4,6,8,9]
-- listOfNum ++ [3,3]  -- 在 list 的尾部连接一个 list, 结果: [2,4,6,8,9,3,3]
-- 4:listOfNum         -- 往 list 的头部插入一个元素, 结果: [4,2,4,6,8,9,3,3]
-- listOfNum !! 4      -- 按下标索引取 list 的元素, 结果: 8

-- 字符串其实是一个 List
str :: [Char]
str = "Hello"