﻿(function ($, neemo, cookieMgr) {
    var hints = ['Poor', 'Not Good', 'Average', 'Good', 'Excellent'];

    $('[data-provider-summary-rating]').each(function () {
        var $me = $(this);
        var rating = parseFloat($me.data().providerSummaryRating);
        $me.raty({
            score: rating,
            readOnly: true,
            path: $me.data().path,
            hints: hints
        });
    });

    neemo.providerReview = function (providerId, ratingElement, nameElement, commentElement, submitElement, endpoint, done) {

        // Unfortunately, the ko applybindings is all about shopping and it's site wide!
        // So we have to fallback to using plain jQuery crap
        var cookie = cookieMgr.get('providerReview');
        if (cookie !== null) {
            if (cookie === 'posted') {
                return false;
            }
        }

        var rating = {
            providerId: providerId,
            score: 0
        };

        ratingElement.raty({
            path: ratingElement.data().path,
            hints: hints,
            click: function (score) {
                rating.score = score;
            }
        });

        submitElement.on('click', function () {
            rating.comment = commentElement.val();
            rating.reviewerName = nameElement.val();

            $.ajax({
                url: endpoint,
                type: 'POST',
                data: rating,
                complete: function () {
                    cookieMgr.set('providerReview', "posted");
                    done();
                }
            });
        });

        return true;
    }


})(jQuery, neemo, Mage.Cookies);