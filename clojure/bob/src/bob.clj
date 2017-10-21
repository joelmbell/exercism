(ns bob
  (:require [clojure.string :as str]))

(defn question? [string]
  (str/ends-with? string "?"))


(defn shouting? [string]
  (let [uppercased  (str/upper-case string)
        filtered    (filter (fn [x] (Character/isLetter x))
                            uppercased)]
    (when (not (zero? (count filtered)))
      (= uppercased string))))

(defn response-for [saying]
  (cond
    (shouting? saying)  "Whoa, chill out!"
    (str/blank? saying) "Fine. Be that way!"
    (question? saying)  "Sure."
    :else               "Whatever."))
