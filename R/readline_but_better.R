# BELOW function should be moved to separate package
#' User chooses from curated options
#'
#' Asks end-user to make a selection between a curated set of possible choices. If user
#'
#' @param prompt general prompt before the possible choices are listed (string)
#' @param choices vector describing the possible choices made available to user
#'
#' @return the value of the choice that the user selected
#' @export
#'
#' @examples
#' \dontrun{
#' readline_choose(
#' prompt = "Which fruit is your favourite?",
#' choices = c("Apples", "Oranges", "Pairs")
#' )
#' }
readline_choose <- function(prompt = "please choose one of:", choices){
  assertthat::assert_that(assertthat::is.string(prompt))

  user_made_a_valid_choice = FALSE

  while (!user_made_a_valid_choice){

    message(prompt)
    message(paste0("[", seq_along(choices), "]"," ", choices, "\n"))

    user_choice = readline(paste0(paste0(seq_along(choices), collapse = "/"), ": "))

    did_user_make_a_valid_choice = user_choice %in% seq_along(choices)
    if(!did_user_make_a_valid_choice){
      message(utilitybeltassertions::fmterror("Must choose one of: ", paste0(seq_along(choices), collapse = "/")))
    }
    else {
      return(choices[as.numeric(user_choice)])
    }
  }
}

# Should be moved to separate package
#' Ask yes or no
#'
#' Drop in replacement for askYesNo that will ask the question over and over until a yes/no answer is given
#'
#' @param prompt prompt for yes/no question (string)
#'
#' @return TRUE/FALSE depending on user response (Yes/No) (boolean)
#' @export
#'
#' @examples
#' \dontrun{
#' readline_choose_yes_or_no("Do you like apples?")
#' }
readline_choose_yes_or_no <- function(prompt){
  res=readline_choose(prompt = prompt, choices = c("Yes", "No"))
  if(res == "Yes")
    return(TRUE)
  else if (res == "No")
    return(FALSE)
  else
    stop("Somethings gone terrible wrong with the readline_choose_yes_or_no")
}
