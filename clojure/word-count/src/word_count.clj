(ns word-count
  (:require [clojure.string :as str]))

(defn split-words [phrase]
  (str/split phrase #" "))

(defn is-punctuation? [char]
  (and
    (not (Character/isLetterOrDigit char))
    (not (Character/isWhitespace char))))

(defn filter-punctuation [phrase]
  (apply str (filter (fn [x] (not (is-punctuation? x)))
                     phrase)))

(defn count-occurances [element list]
  (count (filter (fn [x] (= x element)) list)))

(defn word-count [phrase]
  (let [cleaned     (filter-punctuation (str/lower-case phrase))
        word-list   (filter (fn [x] (not (str/blank? x)))
                            (split-words cleaned))
        word-count  (map (fn [x] (count-occurances x word-list))
                         word-list)]
    (zipmap word-list word-count)))

