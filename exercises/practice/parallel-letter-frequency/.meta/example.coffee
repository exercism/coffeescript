{ Worker } = require 'node:worker_threads'

class ParallelLetterFrequency
  @parallelLetterFrequency: (texts) ->
    formatedTexts = texts
      .map (x) ->
        x.toLowerCase().match(/\p{Letter}+/gu)?.join('') ? ''
      .filter (x) -> x isnt ''

    processSingleText = (text) ->
      new Promise (resolve, reject) ->
        workerCode = """
          const { workerData, parentPort } = require('node:worker_threads');
          const countInWorker = (data) =>
            [...data].reduce((acc, cur) => {
              acc[cur] = (acc[cur] || 0) + 1;
              return acc;
            }, {});
          parentPort.postMessage(countInWorker(workerData));
        """
        worker = new Worker workerCode, eval: true, workerData: text
        worker.on 'message', resolve
        worker.on 'error', reject

    Promise.all formatedTexts.map(processSingleText)
      .then (results) ->
        results.reduce (acc, cur) ->
          for letter, count of cur
            acc[letter] = (acc[letter] or 0) + count
          acc
        , {}

module.exports = ParallelLetterFrequency
