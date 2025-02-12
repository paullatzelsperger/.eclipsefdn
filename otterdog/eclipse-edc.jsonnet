local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-edc') {
  settings+: {
    billing_email: "wemaster@eclipse.org",
    default_repository_permission: "none",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    discussion_source_repository: "eclipse-edc/.github",
    has_discussions: true,
    members_can_change_project_visibility: false,
    name: "Eclipse Dataspace Components",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  secrets+: [
    orgs.newOrgSecret('ORG_GPG_PASSPHRASE') {
      value: "pass:bots/technology.edc/gpg/passphrase",
    },
    orgs.newOrgSecret('ORG_GPG_PRIVATE_KEY') {
      value: "pass:bots/technology.edc/gpg/secret-subkeys.asc",
    },
    orgs.newOrgSecret('ORG_OSSRH_PASSWORD') {
      value: "pass:bots/technology.edc/oss.sonatype.org/password",
    },
    orgs.newOrgSecret('ORG_OSSRH_USERNAME') {
      value: "pass:bots/technology.edc/oss.sonatype.org/username",
    },
    orgs.newOrgSecret('ORGANIZATION_PROJECT') {
      value: "********",
    },
    orgs.newOrgSecret('SWAGGERHUB_TOKEN') {
      value: "********",
    },
    orgs.newOrgSecret('SWAGGERHUB_USER') {
      value: "********",
    },
],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Collateral') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "EDC Presentations and Working Documents",
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Connector') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "EDC core services including data plane and control plane",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: false,
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('AZ_STORAGE_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('AZ_STORAGE_SAS') {
          value: "********",
        },
        orgs.newRepoSecret('COSMOS_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
        orgs.newRepoSecret('S3_ACCESS_KEY_ID') {
          value: "********",
        },
        orgs.newRepoSecret('S3_SECRET_ACCESS_KEY') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('Azure-dev'),
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('DataDashboard') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "DataDashboard",
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('FederatedCatalog') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "FederatedCatalog",
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('GradlePlugins') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
        orgs.newRepoSecret('GRADLE_PUBLISH_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('GRADLE_PUBLISH_SECRET') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('IDS-CodeGeneration') {
      allow_update_branch: false,
      description: "IDS-CodeGeneration",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('IDS-Serializer') {
      allow_update_branch: false,
      description: "IDS-Serializer",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('IdentityHub') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "IdentityHub",
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('JenkinsPipelines') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('MinimumViableDataspace') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "Guidance on documentation, scripts and integration steps on using the EDC project results",
      has_discussions: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('ACR_NAME') {
          value: "********",
        },
        orgs.newRepoSecret('APP_CLIENT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('APP_CLIENT_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('APP_OBJECT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_CLIENT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_CLIENT_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_SUBSCRIPTION_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_TENANT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('COMMON_RESOURCE_GROUP') {
          value: "********",
        },
        orgs.newRepoSecret('COMMON_RESOURCE_GROUP_LOCATION') {
          value: "********",
        },
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('REGISTRY_SHARE') {
          value: "********",
        },
        orgs.newRepoSecret('REGISTRY_STORAGE_ACCOUNT') {
          value: "********",
        },
        orgs.newRepoSecret('TERRAFORM_STATE_CONTAINER') {
          value: "********",
        },
        orgs.newRepoSecret('TERRAFORM_STATE_STORAGE_ACCOUNT') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Publications') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "EDC publications",
      has_discussions: true,
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('RegistrationService') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "RegistrationService",
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Release') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_discussions: true,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Runtime-Metamodel') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "Runtime-Metamodel",
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Samples') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_discussions: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Technology-Aws') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Technology-Azure') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('COSMOS_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
        orgs.newRepoSecret('PG_CONNECTION_STRING') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Technology-Gcp') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('EF_JENKINS_USER') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Template-Basic') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_wiki: false,
      is_template: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('TrustFrameworkAdoption') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('docs') {
      allow_merge_commit: false,
      allow_rebase_merge: false,
      allow_update_branch: false,
      description: "EDC documentation",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/docs",
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('DISCORD_WEBHOOK_GITHUB') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('json-ld-context') {
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
  ],
}
