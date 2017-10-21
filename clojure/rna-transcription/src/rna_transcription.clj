(ns rna-transcription)

(defn transcribe [from]
  (case from
    \C \G
    \G \C
    \A \U
    \T \A
    \X (throw (AssertionError. "Bad Input"))
    from))

(defn to-rna [from]
  (apply str (map transcribe from)))

