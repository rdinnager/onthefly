#' Create an `otf_trainer` object for training an on-the-fly likelihood-free
#' inference engine
#'
#' @param sim_fun Function that takes a list of parameters and returns a
#' simulation output
#' @param train_fun A function that takes a simulation output as input and
#' outputs a list of two vectors specifying a stochastic 'latent' code. The
#' first vector is means of Gaussian distributions, the second is corresponding
#' standard deviations for the same Gaussian distributions. The function should
#' also have a second argument `n_latent` specifying the number of dimensions
#' for the latent code. The function generally is a `torch` neural network,
#' usually consisting of a `torch` `nn_module`.
#' @param n_latent The number of latent dimensions for the latent code to use.
#' @param n_accum The number of simulations to 'accumulate' in a batch before
#' running the train_fun
#'
#' @return An `otf_trainer` object which can be used to run likelihood-free
#' inference (using [otf_train()])
#' @export
#'
#' @examples
otf_create_trainer <- function(sim_fun, train_fun, n_latent, n_accum) {

}
