using { sap.ibso.captraining as my } from '../db/schema';

service AdminService @(requires: ['authenticated-user']){

    entity Books as projection on my.Books;

    entity Authors as projection on my.Authors;
}

annotate AdminService.Books @(restrict: [
    {grant:['READ'], to: 'authenticated-user'}
]);

annotate AdminService.Authors @(restrict: [
    {grant:['READ'], to: 'authenticated-user'}
]);