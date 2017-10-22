(ns word-count
  (:require [clojure.string :as str]))

(defn split-words [phrase]
  (str/split phrase #" "))

(defn is-punctuation? [char]
  (and (not (Character/isLetterOrDigit char))
       (not (Character/isWhitespace char))))

(defn filter-punctuation [phrase]
  (apply str (remove is-punctuation? phrase)))

(defn count-occurances [element list]
  (count
    (filter #(= % element)
            list)))

(defn word-count [phrase]
  (let [cleaned     (filter-punctuation (str/lower-case phrase))
        word-list   (remove str/blank? (split-words cleaned))
        word-count  (map #(count-occurances % word-list)
                         word-list)]
    (zipmap word-list word-count)))