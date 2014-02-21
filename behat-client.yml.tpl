default:
  formatter:
    name:    progress
  extensions:
    VIPSoft\GearmanExtension\Extension:
      gearman_server:    GEARMAN_MASTER
      command_class:     VIPSoft\GearmanExtension\Console\Command\GearmanClientCommand